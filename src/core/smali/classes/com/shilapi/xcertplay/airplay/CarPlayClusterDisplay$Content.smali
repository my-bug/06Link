.class public final enum Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;
.super Ljava/lang/Enum;
.source "CarPlayClusterDisplay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Content"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;",
        "",
        "url",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getUrl",
        "()Ljava/lang/String;",
        "MAP",
        "TURN_CARD",
        "INSTRUMENTS",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

.field public static final enum INSTRUMENTS:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

.field public static final enum MAP:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

.field public static final enum TURN_CARD:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->MAP:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->TURN_CARD:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->INSTRUMENTS:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    const/4 v1, 0x0

    const-string v2, "maps:/car/instrumentcluster/map"

    const-string v3, "MAP"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->MAP:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    .line 21
    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    const/4 v1, 0x1

    const-string v2, "maps:/car/instrumentcluster/instructioncard"

    const-string v3, "TURN_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->TURN_CARD:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    .line 22
    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    const/4 v1, 0x2

    const-string v2, "maps:/car/instrumentcluster"

    const-string v3, "INSTRUMENTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->INSTRUMENTS:Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    invoke-static {}, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->$values()[Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->$VALUES:[Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->url:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->$VALUES:[Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;

    return-object v0
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlayClusterDisplay$Content;->url:Ljava/lang/String;

    return-object v0
.end method
