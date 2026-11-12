.class public final enum Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
.super Ljava/lang/Enum;
.source "BydClusterNaviMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
        "",
        "code",
        "",
        "label",
        "",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getCode",
        "()I",
        "getLabel",
        "()Ljava/lang/String;",
        "OFF",
        "TURN_ON_BY_NAVI",
        "SMALL",
        "FULL",
        "showsMap",
        "",
        "getShowsMap",
        "()Z",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

.field public static final Companion:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;

.field public static final enum FULL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

.field private static final GET_INT:I = 0x5

.field private static final INSTRUMENT_DEVICE:I = 0x3ef

.field private static final NAVI_TYPE_GET:I = 0x40c03032

.field public static final enum OFF:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

.field public static final READ_COMMAND:Ljava/lang/String; = "service call autoservice 5 i32 1007 i32 1086337074"

.field public static final enum SMALL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

.field public static final enum TURN_ON_BY_NAVI:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;


# instance fields
.field private final code:I

.field private final label:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->OFF:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->TURN_ON_BY_NAVI:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->SMALL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->FULL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    const-string v1, "Off"

    const-string v2, "OFF"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->OFF:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    .line 10
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    const-string v1, "Turn on by navi"

    const-string v2, "TURN_ON_BY_NAVI"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->TURN_ON_BY_NAVI:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    .line 11
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    const-string v1, "Small screen navi"

    const-string v2, "SMALL"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->SMALL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    .line 12
    new-instance v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    const/4 v1, 0x4

    const-string v2, "Full screen navi"

    const-string v3, "FULL"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->FULL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    invoke-static {}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->$values()[Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->$VALUES:[Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->Companion:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->code:I

    iput-object p4, p0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->label:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->$VALUES:[Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->code:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowsMap()Z
    .locals 1

    .line 15
    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->SMALL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;->FULL:Lcom/shilapi/xcertplay/hud/BydClusterNaviMode;

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
