.class public final enum Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;
.super Ljava/lang/Enum;
.source "ExternalWifiManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/ExternalWifiException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "HOTSPOT_ON",
        "WIFI_OFF",
        "NOT_CONNECTED",
        "PASSWORD_NEEDED",
        "ENTERPRISE",
        "CHANNEL_UNKNOWN",
        "NO_LINK_LOCAL",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

.field public static final enum CHANNEL_UNKNOWN:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

.field public static final enum ENTERPRISE:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

.field public static final enum HOTSPOT_ON:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

.field public static final enum NOT_CONNECTED:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

.field public static final enum NO_LINK_LOCAL:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

.field public static final enum PASSWORD_NEEDED:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

.field public static final enum WIFI_OFF:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    sget-object v1, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->HOTSPOT_ON:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->WIFI_OFF:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->NOT_CONNECTED:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->PASSWORD_NEEDED:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->ENTERPRISE:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->CHANNEL_UNKNOWN:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->NO_LINK_LOCAL:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 173
    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const-string v1, "HOTSPOT_ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->HOTSPOT_ON:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const-string v1, "WIFI_OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->WIFI_OFF:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const-string v1, "NOT_CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->NOT_CONNECTED:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const-string v1, "PASSWORD_NEEDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->PASSWORD_NEEDED:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const-string v1, "ENTERPRISE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->ENTERPRISE:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const-string v1, "CHANNEL_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->CHANNEL_UNKNOWN:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    new-instance v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    const-string v1, "NO_LINK_LOCAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->NO_LINK_LOCAL:Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    invoke-static {}, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->$values()[Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->$VALUES:[Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;->$VALUES:[Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/network/ExternalWifiException$Reason;

    return-object v0
.end method
