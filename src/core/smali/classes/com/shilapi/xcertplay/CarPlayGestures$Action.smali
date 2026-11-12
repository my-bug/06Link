.class public final enum Lcom/shilapi/xcertplay/CarPlayGestures$Action;
.super Ljava/lang/Enum;
.source "CarPlayGestures.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/CarPlayGestures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/CarPlayGestures$Action;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayGestures$Action;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "FORWARD",
        "HOLD",
        "FLUSH_AND_FORWARD",
        "FLUSH",
        "DROP",
        "RELEASE_CARPLAY",
        "OPEN_MENU",
        "common_release"
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/CarPlayGestures$Action;

.field public static final enum DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

.field public static final enum FLUSH:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

.field public static final enum FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

.field public static final enum FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

.field public static final enum HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

.field public static final enum OPEN_MENU:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

.field public static final enum RELEASE_CARPLAY:Lcom/shilapi/xcertplay/CarPlayGestures$Action;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/CarPlayGestures$Action;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->RELEASE_CARPLAY:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->OPEN_MENU:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v1, "FORWARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    .line 41
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v1, "HOLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->HOLD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    .line 43
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v1, "FLUSH_AND_FORWARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH_AND_FORWARD:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    .line 45
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v1, "FLUSH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->FLUSH:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    .line 47
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v1, "DROP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->DROP:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    .line 49
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v1, "RELEASE_CARPLAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->RELEASE_CARPLAY:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    .line 51
    new-instance v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    const-string v1, "OPEN_MENU"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->OPEN_MENU:Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-static {}, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->$values()[Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->$VALUES:[Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/CarPlayGestures$Action;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/CarPlayGestures$Action;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/CarPlayGestures$Action;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/CarPlayGestures$Action;->$VALUES:[Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/CarPlayGestures$Action;

    return-object v0
.end method
