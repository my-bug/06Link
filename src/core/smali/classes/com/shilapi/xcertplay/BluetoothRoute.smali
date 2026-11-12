.class public final enum Lcom/shilapi/xcertplay/BluetoothRoute;
.super Ljava/lang/Enum;
.source "BluetoothRoute.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/BluetoothRoute$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/BluetoothRoute;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u000f\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000cj\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/BluetoothRoute;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "USE",
        "TURN_ON",
        "NO_ADAPTER",
        "GUIDE_TO_USB",
        "USE_GOC",
        "touchesAdapter",
        "",
        "getTouchesAdapter",
        "()Z",
        "mayTurnOn",
        "getMayTurnOn",
        "nothingToWaitFor",
        "getNothingToWaitFor",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/BluetoothRoute;

.field public static final Companion:Lcom/shilapi/xcertplay/BluetoothRoute$Companion;

.field public static final enum GUIDE_TO_USB:Lcom/shilapi/xcertplay/BluetoothRoute;

.field public static final enum NO_ADAPTER:Lcom/shilapi/xcertplay/BluetoothRoute;

.field public static final enum TURN_ON:Lcom/shilapi/xcertplay/BluetoothRoute;

.field public static final enum USE:Lcom/shilapi/xcertplay/BluetoothRoute;

.field public static final enum USE_GOC:Lcom/shilapi/xcertplay/BluetoothRoute;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/BluetoothRoute;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/shilapi/xcertplay/BluetoothRoute;

    sget-object v1, Lcom/shilapi/xcertplay/BluetoothRoute;->USE:Lcom/shilapi/xcertplay/BluetoothRoute;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/BluetoothRoute;->TURN_ON:Lcom/shilapi/xcertplay/BluetoothRoute;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/BluetoothRoute;->NO_ADAPTER:Lcom/shilapi/xcertplay/BluetoothRoute;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/BluetoothRoute;->GUIDE_TO_USB:Lcom/shilapi/xcertplay/BluetoothRoute;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/BluetoothRoute;->USE_GOC:Lcom/shilapi/xcertplay/BluetoothRoute;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/shilapi/xcertplay/BluetoothRoute;

    const-string v1, "USE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/BluetoothRoute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->USE:Lcom/shilapi/xcertplay/BluetoothRoute;

    .line 21
    new-instance v0, Lcom/shilapi/xcertplay/BluetoothRoute;

    const-string v1, "TURN_ON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/BluetoothRoute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->TURN_ON:Lcom/shilapi/xcertplay/BluetoothRoute;

    .line 24
    new-instance v0, Lcom/shilapi/xcertplay/BluetoothRoute;

    const-string v1, "NO_ADAPTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/BluetoothRoute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->NO_ADAPTER:Lcom/shilapi/xcertplay/BluetoothRoute;

    .line 30
    new-instance v0, Lcom/shilapi/xcertplay/BluetoothRoute;

    const-string v1, "GUIDE_TO_USB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/BluetoothRoute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->GUIDE_TO_USB:Lcom/shilapi/xcertplay/BluetoothRoute;

    .line 36
    new-instance v0, Lcom/shilapi/xcertplay/BluetoothRoute;

    const-string v1, "USE_GOC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/BluetoothRoute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->USE_GOC:Lcom/shilapi/xcertplay/BluetoothRoute;

    invoke-static {}, Lcom/shilapi/xcertplay/BluetoothRoute;->$values()[Lcom/shilapi/xcertplay/BluetoothRoute;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->$VALUES:[Lcom/shilapi/xcertplay/BluetoothRoute;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/shilapi/xcertplay/BluetoothRoute$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/BluetoothRoute$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->Companion:Lcom/shilapi/xcertplay/BluetoothRoute$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/BluetoothRoute;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/BluetoothRoute;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/BluetoothRoute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/BluetoothRoute;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/BluetoothRoute;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->$VALUES:[Lcom/shilapi/xcertplay/BluetoothRoute;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/BluetoothRoute;

    return-object v0
.end method


# virtual methods
.method public final getMayTurnOn()Z
    .locals 1

    .line 42
    sget-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->TURN_ON:Lcom/shilapi/xcertplay/BluetoothRoute;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNothingToWaitFor()Z
    .locals 1

    .line 45
    sget-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->USE:Lcom/shilapi/xcertplay/BluetoothRoute;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->GUIDE_TO_USB:Lcom/shilapi/xcertplay/BluetoothRoute;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->USE_GOC:Lcom/shilapi/xcertplay/BluetoothRoute;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getTouchesAdapter()Z
    .locals 1

    .line 39
    sget-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->GUIDE_TO_USB:Lcom/shilapi/xcertplay/BluetoothRoute;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/BluetoothRoute;->USE_GOC:Lcom/shilapi/xcertplay/BluetoothRoute;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
