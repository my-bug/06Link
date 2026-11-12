.class public final enum Lcom/shilapi/xcertplay/SetupProblemText$Action;
.super Ljava/lang/Enum;
.source "SetupProblemText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/SetupProblemText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/SetupProblemText$Action;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/SetupProblemText$Action;",
        "",
        "label",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getLabel",
        "()I",
        "TRY_AGAIN",
        "ALLOW",
        "OPEN_HOTSPOT_SETTINGS",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/SetupProblemText$Action;

.field public static final enum ALLOW:Lcom/shilapi/xcertplay/SetupProblemText$Action;

.field public static final enum OPEN_HOTSPOT_SETTINGS:Lcom/shilapi/xcertplay/SetupProblemText$Action;

.field public static final enum TRY_AGAIN:Lcom/shilapi/xcertplay/SetupProblemText$Action;


# instance fields
.field private final label:I


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/SetupProblemText$Action;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shilapi/xcertplay/SetupProblemText$Action;

    sget-object v1, Lcom/shilapi/xcertplay/SetupProblemText$Action;->TRY_AGAIN:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/SetupProblemText$Action;->ALLOW:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/SetupProblemText$Action;->OPEN_HOTSPOT_SETTINGS:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;

    const/4 v1, 0x0

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_try_again:I

    const-string v3, "TRY_AGAIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;->TRY_AGAIN:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    new-instance v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;

    const/4 v1, 0x1

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->setup_allow:I

    const-string v3, "ALLOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;->ALLOW:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    .line 18
    new-instance v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;

    const/4 v1, 0x2

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->open_car_hotspot_settings:I

    const-string v3, "OPEN_HOTSPOT_SETTINGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/shilapi/xcertplay/SetupProblemText$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;->OPEN_HOTSPOT_SETTINGS:Lcom/shilapi/xcertplay/SetupProblemText$Action;

    invoke-static {}, Lcom/shilapi/xcertplay/SetupProblemText$Action;->$values()[Lcom/shilapi/xcertplay/SetupProblemText$Action;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;->$VALUES:[Lcom/shilapi/xcertplay/SetupProblemText$Action;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/shilapi/xcertplay/SetupProblemText$Action;->label:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/SetupProblemText$Action;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/SetupProblemText$Action;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/SetupProblemText$Action;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/SetupProblemText$Action;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/SetupProblemText$Action;->$VALUES:[Lcom/shilapi/xcertplay/SetupProblemText$Action;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/SetupProblemText$Action;

    return-object v0
.end method


# virtual methods
.method public final getLabel()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/shilapi/xcertplay/SetupProblemText$Action;->label:I

    return v0
.end method
