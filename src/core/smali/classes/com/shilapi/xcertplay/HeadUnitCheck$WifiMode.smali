.class public final enum Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;
.super Ljava/lang/Enum;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;",
        "",
        "label",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getLabel",
        "()I",
        "WIFI_DIRECT",
        "HOTSPOT",
        "AUTOMATIC",
        "EXTERNAL",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

.field public static final enum AUTOMATIC:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

.field public static final enum EXTERNAL:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

.field public static final enum HOTSPOT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

.field public static final enum WIFI_DIRECT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;


# instance fields
.field private final label:I


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->WIFI_DIRECT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->HOTSPOT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->AUTOMATIC:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->EXTERNAL:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    const/4 v1, 0x0

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_mode_p2p:I

    const-string v3, "WIFI_DIRECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->WIFI_DIRECT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    const/4 v1, 0x1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_mode_hotspot:I

    const-string v3, "HOTSPOT"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->HOTSPOT:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    .line 62
    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    const/4 v1, 0x2

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_mode_auto:I

    const-string v3, "AUTOMATIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->AUTOMATIC:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    new-instance v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    const/4 v1, 0x3

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->chk_mode_external:I

    const-string v3, "EXTERNAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->EXTERNAL:Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-static {}, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->$values()[Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->$VALUES:[Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->label:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->$VALUES:[Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;

    return-object v0
.end method


# virtual methods
.method public final getLabel()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$WifiMode;->label:I

    return v0
.end method
