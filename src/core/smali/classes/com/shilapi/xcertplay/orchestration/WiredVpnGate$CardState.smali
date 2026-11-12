.class public final enum Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;
.super Ljava/lang/Enum;
.source "WiredUsbPromptPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/orchestration/WiredVpnGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CONNECTED",
        "CONNECTING",
        "NO_IPHONE",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

.field public static final enum CONNECTED:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

.field public static final enum CONNECTING:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

.field public static final enum NO_IPHONE:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->CONNECTED:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->CONNECTING:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->NO_IPHONE:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->CONNECTED:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->CONNECTING:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    new-instance v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    const-string v1, "NO_IPHONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->NO_IPHONE:Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    invoke-static {}, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->$values()[Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->$VALUES:[Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;->$VALUES:[Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/orchestration/WiredVpnGate$CardState;

    return-object v0
.end method
