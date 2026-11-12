.class public final enum Lcom/shilapi/xcertplay/transport/VehicleGear;
.super Ljava/lang/Enum;
.source "VehicleSpeedNmea.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/transport/VehicleGear;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/VehicleGear;",
        "",
        "letter",
        "",
        "<init>",
        "(Ljava/lang/String;IC)V",
        "getLetter",
        "()C",
        "PARK",
        "REVERSE",
        "NEUTRAL",
        "DRIVE",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/transport/VehicleGear;

.field public static final enum DRIVE:Lcom/shilapi/xcertplay/transport/VehicleGear;

.field public static final enum NEUTRAL:Lcom/shilapi/xcertplay/transport/VehicleGear;

.field public static final enum PARK:Lcom/shilapi/xcertplay/transport/VehicleGear;

.field public static final enum REVERSE:Lcom/shilapi/xcertplay/transport/VehicleGear;


# instance fields
.field private final letter:C


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/transport/VehicleGear;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shilapi/xcertplay/transport/VehicleGear;

    sget-object v1, Lcom/shilapi/xcertplay/transport/VehicleGear;->PARK:Lcom/shilapi/xcertplay/transport/VehicleGear;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/VehicleGear;->REVERSE:Lcom/shilapi/xcertplay/transport/VehicleGear;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/VehicleGear;->NEUTRAL:Lcom/shilapi/xcertplay/transport/VehicleGear;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/VehicleGear;->DRIVE:Lcom/shilapi/xcertplay/transport/VehicleGear;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/shilapi/xcertplay/transport/VehicleGear;

    const/4 v1, 0x0

    const/16 v2, 0x50

    const-string v3, "PARK"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/transport/VehicleGear;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/VehicleGear;->PARK:Lcom/shilapi/xcertplay/transport/VehicleGear;

    new-instance v0, Lcom/shilapi/xcertplay/transport/VehicleGear;

    const/4 v1, 0x1

    const/16 v2, 0x52

    const-string v3, "REVERSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/transport/VehicleGear;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/VehicleGear;->REVERSE:Lcom/shilapi/xcertplay/transport/VehicleGear;

    new-instance v0, Lcom/shilapi/xcertplay/transport/VehicleGear;

    const/4 v1, 0x2

    const/16 v2, 0x4e

    const-string v3, "NEUTRAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/transport/VehicleGear;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/VehicleGear;->NEUTRAL:Lcom/shilapi/xcertplay/transport/VehicleGear;

    new-instance v0, Lcom/shilapi/xcertplay/transport/VehicleGear;

    const/4 v1, 0x3

    const/16 v2, 0x44

    const-string v3, "DRIVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/transport/VehicleGear;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/VehicleGear;->DRIVE:Lcom/shilapi/xcertplay/transport/VehicleGear;

    invoke-static {}, Lcom/shilapi/xcertplay/transport/VehicleGear;->$values()[Lcom/shilapi/xcertplay/transport/VehicleGear;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/VehicleGear;->$VALUES:[Lcom/shilapi/xcertplay/transport/VehicleGear;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/VehicleGear;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lcom/shilapi/xcertplay/transport/VehicleGear;->letter:C

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/transport/VehicleGear;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/transport/VehicleGear;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/VehicleGear;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/transport/VehicleGear;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/transport/VehicleGear;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/transport/VehicleGear;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/transport/VehicleGear;->$VALUES:[Lcom/shilapi/xcertplay/transport/VehicleGear;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/transport/VehicleGear;

    return-object v0
.end method


# virtual methods
.method public final getLetter()C
    .locals 1

    .line 5
    iget-char v0, p0, Lcom/shilapi/xcertplay/transport/VehicleGear;->letter:C

    return v0
.end method
