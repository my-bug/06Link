.class public final enum Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
.super Ljava/lang/Enum;
.source "Iap2WirelessControlClient.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "IDENTIFIED",
        "AUTHENTICATED",
        "SUBSCRIBED",
        "WIFI_CONFIG_SENT",
        "CARPLAY_START_SENT",
        "TRANSPORT_NOTIFIED",
        "POST_TRANSPORT_WIFI_CONFIG_SENT",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

.field public static final enum AUTHENTICATED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

.field public static final enum CARPLAY_START_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

.field public static final enum IDENTIFIED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

.field public static final enum POST_TRANSPORT_WIFI_CONFIG_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

.field public static final enum SUBSCRIBED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

.field public static final enum TRANSPORT_NOTIFIED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

.field public static final enum WIFI_CONFIG_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->IDENTIFIED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->AUTHENTICATED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->SUBSCRIBED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->WIFI_CONFIG_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->CARPLAY_START_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->TRANSPORT_NOTIFIED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->POST_TRANSPORT_WIFI_CONFIG_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 400
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const-string v1, "IDENTIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->IDENTIFIED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 401
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const-string v1, "AUTHENTICATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->AUTHENTICATED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 402
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const-string v1, "SUBSCRIBED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->SUBSCRIBED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 403
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const-string v1, "WIFI_CONFIG_SENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->WIFI_CONFIG_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 404
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const-string v1, "CARPLAY_START_SENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->CARPLAY_START_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 405
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const-string v1, "TRANSPORT_NOTIFIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->TRANSPORT_NOTIFIED:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    .line 406
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    const-string v1, "POST_TRANSPORT_WIFI_CONFIG_SENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->POST_TRANSPORT_WIFI_CONFIG_SENT:Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    invoke-static {}, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->$values()[Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->$VALUES:[Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;->$VALUES:[Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/transport/Iap2WirelessControlStage;

    return-object v0
.end method
