.class public final enum Lcom/shilapi/xcertplay/transport/EvChargingConnectors;
.super Ljava/lang/Enum;
.source "Iap2VehicleStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/transport/EvChargingConnectors;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0015\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0008\u0002\u0012\n\u0010\u0002\u001a\u00020\u0003\"\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/EvChargingConnectors;",
        "",
        "wireValues",
        "",
        "",
        "<init>",
        "(Ljava/lang/String;I[I)V",
        "getWireValues$shared_release",
        "()[I",
        "CCS2_TYPE2",
        "GB_T",
        "CCS1_J1772",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

.field public static final enum CCS1_J1772:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

.field public static final enum CCS2_TYPE2:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

.field public static final enum GB_T:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;


# instance fields
.field private final wireValues:[I


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/transport/EvChargingConnectors;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    sget-object v1, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->CCS2_TYPE2:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->GB_T:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->CCS1_J1772:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    const/4 v1, 0x4

    const/4 v2, 0x1

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const-string v3, "CCS2_TYPE2"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->CCS2_TYPE2:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    .line 28
    new-instance v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    const/4 v1, 0x5

    const/4 v3, 0x6

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-string v3, "GB_T"

    invoke-direct {v0, v3, v2, v1}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->GB_T:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    .line 29
    new-instance v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    const/4 v1, 0x2

    filled-new-array {v4, v1}, [I

    move-result-object v2

    const-string v3, "CCS1_J1772"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->CCS1_J1772:Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    invoke-static {}, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->$values()[Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->$VALUES:[Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->wireValues:[I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/transport/EvChargingConnectors;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/EvChargingConnectors;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/transport/EvChargingConnectors;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->$VALUES:[Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/transport/EvChargingConnectors;

    return-object v0
.end method


# virtual methods
.method public final getWireValues$shared_release()[I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shilapi/xcertplay/transport/EvChargingConnectors;->wireValues:[I

    return-object v0
.end method
