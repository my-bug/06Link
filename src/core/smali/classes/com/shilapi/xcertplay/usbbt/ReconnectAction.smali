.class public final enum Lcom/shilapi/xcertplay/usbbt/ReconnectAction;
.super Ljava/lang/Enum;
.source "UsbBtReconnect.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/usbbt/ReconnectAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/usbbt/ReconnectAction;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "USE_IAP2",
        "WAIT",
        "OPEN_IAP2_ON_LINK",
        "SECURE_LINK",
        "DROP_LINK",
        "PAGE",
        "ASK_TO_PAIR",
        "shared_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

.field public static final enum ASK_TO_PAIR:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

.field public static final enum DROP_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

.field public static final enum OPEN_IAP2_ON_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

.field public static final enum PAGE:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

.field public static final enum SECURE_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

.field public static final enum USE_IAP2:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

.field public static final enum WAIT:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/usbbt/ReconnectAction;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->USE_IAP2:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->WAIT:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->OPEN_IAP2_ON_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->SECURE_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->DROP_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->PAGE:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->ASK_TO_PAIR:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const-string v1, "USE_IAP2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->USE_IAP2:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    .line 42
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const-string v1, "WAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->WAIT:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    .line 44
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const-string v1, "OPEN_IAP2_ON_LINK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->OPEN_IAP2_ON_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    .line 46
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const-string v1, "SECURE_LINK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->SECURE_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    .line 48
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const-string v1, "DROP_LINK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->DROP_LINK:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    .line 50
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const-string v1, "PAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->PAGE:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    .line 52
    new-instance v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    const-string v1, "ASK_TO_PAIR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->ASK_TO_PAIR:Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    invoke-static {}, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->$values()[Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->$VALUES:[Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/usbbt/ReconnectAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/usbbt/ReconnectAction;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/usbbt/ReconnectAction;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/usbbt/ReconnectAction;->$VALUES:[Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/usbbt/ReconnectAction;

    return-object v0
.end method
