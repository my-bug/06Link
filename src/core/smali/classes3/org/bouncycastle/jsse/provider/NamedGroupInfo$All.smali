.class final enum Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jsse/provider/NamedGroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "All"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum DRAFT_mlkem1024:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum DRAFT_mlkem768:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum OQS_mlkem1024:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum OQS_mlkem512:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum OQS_mlkem768:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum brainpoolP256r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum brainpoolP256r1tls13:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum brainpoolP384r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum brainpoolP384r1tls13:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum brainpoolP512r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum brainpoolP512r1tls13:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum curveSM2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum ffdhe2048:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum ffdhe3072:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum ffdhe4096:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum ffdhe6144:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum ffdhe8192:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp160k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp160r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp160r2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp192k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp192r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp224k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp224r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp256k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp256r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp384r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum secp521r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect163k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect163r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect163r2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect193r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect193r2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect233k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect233r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect239k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect283k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect283r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect409k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect409r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect571k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum sect571r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum x25519:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

.field public static final enum x448:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;


# instance fields
.field private final bitsECDH:I

.field private final bitsFFDHE:I

.field private final char2:Z

.field private final jcaAlgorithm:Ljava/lang/String;

.field private final jcaGroup:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final namedGroup:I

.field private final supportedPost13:Z

.field private final supportedPre13:Z

.field private final text:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;
    .locals 3

    const/16 v0, 0x2c

    new-array v0, v0, [Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect163k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect163r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect163r2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect193r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect193r2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect233k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect233r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect239k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect283k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect283r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect409k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect409r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect571k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect571r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp160k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp160r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp160r2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp192k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp192r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp224k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp224r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp256k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp256r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp384r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp521r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP256r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP384r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP512r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->x25519:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->x448:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP256r1tls13:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP384r1tls13:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP512r1tls13:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->curveSM2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe2048:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe3072:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe4096:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe6144:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe8192:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->OQS_mlkem512:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->OQS_mlkem768:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->OQS_mlkem1024:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->DRAFT_mlkem768:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->DRAFT_mlkem1024:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect163k1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "EC"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect163k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect163r1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect163r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect163r2"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect163r2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect193r1"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect193r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect193r2"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect193r2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect233k1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect233k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect233r1"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect233r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect239k1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect239k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect283k1"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect283k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect283r1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect283r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect409k1"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect409k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect409r1"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect409r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect571k1"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect571k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "sect571r1"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->sect571r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "secp160k1"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp160k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "secp160r1"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp160r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "secp160r2"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp160r2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "secp192k1"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp192k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "secp192r1"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp192r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "secp224k1"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp224k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x14

    const/16 v2, 0x15

    const-string v3, "secp224r1"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp224r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x15

    const/16 v2, 0x16

    const-string v3, "secp256k1"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp256k1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x16

    const/16 v2, 0x17

    const-string v3, "secp256r1"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp256r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x17

    const/16 v2, 0x18

    const-string v3, "secp384r1"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp384r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x18

    const/16 v2, 0x19

    const-string v3, "secp521r1"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->secp521r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x19

    const/16 v2, 0x1a

    const-string v3, "brainpoolP256r1"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP256r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x1a

    const/16 v2, 0x1b

    const-string v3, "brainpoolP384r1"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP384r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x1b

    const/16 v2, 0x1c

    const-string v3, "brainpoolP512r1"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP512r1:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x1d

    const-string v2, "XDH"

    const-string v3, "x25519"

    const/16 v5, 0x1c

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->x25519:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x1e

    const-string v2, "XDH"

    const-string v3, "x448"

    const/16 v5, 0x1d

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->x448:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v2, 0x1f

    const-string v3, "brainpoolP256r1tls13"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP256r1tls13:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x1f

    const/16 v2, 0x20

    const-string v3, "brainpoolP384r1tls13"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP384r1tls13:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x20

    const/16 v2, 0x21

    const-string v3, "brainpoolP512r1tls13"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->brainpoolP512r1tls13:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x21

    const/16 v2, 0x29

    const-string v3, "curveSM2"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->curveSM2:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "ffdhe2048"

    const/16 v2, 0x22

    const/16 v3, 0x100

    const-string v4, "DiffieHellman"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe2048:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x23

    const/16 v2, 0x101

    const-string v3, "ffdhe3072"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe3072:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x24

    const/16 v2, 0x102

    const-string v3, "ffdhe4096"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe4096:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x25

    const/16 v2, 0x103

    const-string v3, "ffdhe6144"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe6144:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x26

    const/16 v2, 0x104

    const-string v3, "ffdhe8192"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->ffdhe8192:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const-string v1, "OQS_mlkem512"

    const/16 v2, 0x27

    const/16 v3, 0x247

    const-string v4, "ML-KEM"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->OQS_mlkem512:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x28

    const/16 v2, 0x248

    const-string v3, "OQS_mlkem768"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->OQS_mlkem768:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x29

    const/16 v2, 0x249

    const-string v3, "OQS_mlkem1024"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->OQS_mlkem1024:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x2a

    const/16 v2, 0x768

    const-string v3, "DRAFT_mlkem768"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->DRAFT_mlkem768:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    new-instance v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    const/16 v1, 0x2b

    const/16 v2, 0x1024

    const-string v3, "DRAFT_mlkem1024"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->DRAFT_mlkem1024:Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    invoke-static {}, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->$values()[Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->$VALUES:[Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->namedGroup:I

    invoke-static {p3}, Lorg/bouncycastle/tls/NamedGroup;->getName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->name:Ljava/lang/String;

    invoke-static {p3}, Lorg/bouncycastle/tls/NamedGroup;->getText(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->text:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->jcaAlgorithm:Ljava/lang/String;

    invoke-static {p3}, Lorg/bouncycastle/tls/NamedGroup;->getStandardName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->jcaGroup:Ljava/lang/String;

    sget-object p1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv13:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-static {p3, p1}, Lorg/bouncycastle/tls/NamedGroup;->canBeNegotiated(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->supportedPost13:Z

    sget-object p1, Lorg/bouncycastle/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/tls/ProtocolVersion;

    invoke-static {p3, p1}, Lorg/bouncycastle/tls/NamedGroup;->canBeNegotiated(ILorg/bouncycastle/tls/ProtocolVersion;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->supportedPre13:Z

    invoke-static {p3}, Lorg/bouncycastle/tls/NamedGroup;->isChar2Curve(I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->char2:Z

    invoke-static {p3}, Lorg/bouncycastle/tls/NamedGroup;->getCurveBits(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->bitsECDH:I

    invoke-static {p3}, Lorg/bouncycastle/tls/NamedGroup;->getFiniteFieldBits(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->bitsFFDHE:I

    return-void
.end method

.method static synthetic access$1000(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->bitsECDH:I

    return p0
.end method

.method static synthetic access$1100(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->jcaAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->supportedPost13:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->supportedPre13:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->namedGroup:I

    return p0
.end method

.method static synthetic access$600(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->char2:Z

    return p0
.end method

.method static synthetic access$700(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->bitsFFDHE:I

    return p0
.end method

.method static synthetic access$800(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->jcaGroup:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->$VALUES:[Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    invoke-virtual {v0}, [Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/jsse/provider/NamedGroupInfo$All;

    return-object v0
.end method
