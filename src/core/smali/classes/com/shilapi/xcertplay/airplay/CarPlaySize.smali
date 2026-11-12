.class public final enum Lcom/shilapi/xcertplay/airplay/CarPlaySize;
.super Ljava/lang/Enum;
.source "CarPlaySize.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/CarPlaySize$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/airplay/CarPlaySize;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlaySize;",
        "",
        "label",
        "",
        "widthMillimeters",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "getLabel",
        "()Ljava/lang/String;",
        "getWidthMillimeters",
        "()I",
        "LARGE",
        "MEDIUM",
        "SMALL",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/airplay/CarPlaySize;

.field public static final Companion:Lcom/shilapi/xcertplay/airplay/CarPlaySize$Companion;

.field private static final DEFAULT:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

.field public static final enum LARGE:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

.field public static final enum MEDIUM:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

.field public static final enum SMALL:Lcom/shilapi/xcertplay/airplay/CarPlaySize;


# instance fields
.field private final label:Ljava/lang/String;

.field private final widthMillimeters:I


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/airplay/CarPlaySize;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->LARGE:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->MEDIUM:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->SMALL:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    const-string v1, "Large"

    const/16 v2, 0xfa

    const-string v3, "LARGE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->LARGE:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    .line 9
    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    const-string v1, "Medium"

    const/16 v2, 0x12c

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->MEDIUM:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    .line 10
    new-instance v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    const-string v2, "Small"

    const/16 v3, 0x15e

    const-string v4, "SMALL"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->SMALL:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    invoke-static {}, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->$values()[Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->$VALUES:[Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/shilapi/xcertplay/airplay/CarPlaySize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->Companion:Lcom/shilapi/xcertplay/airplay/CarPlaySize$Companion;

    .line 13
    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->DEFAULT:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->label:Ljava/lang/String;

    iput p4, p0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->widthMillimeters:I

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lcom/shilapi/xcertplay/airplay/CarPlaySize;
    .locals 1

    .line 7
    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->DEFAULT:Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/airplay/CarPlaySize;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/airplay/CarPlaySize;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/airplay/CarPlaySize;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->$VALUES:[Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/airplay/CarPlaySize;

    return-object v0
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidthMillimeters()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/shilapi/xcertplay/airplay/CarPlaySize;->widthMillimeters:I

    return v0
.end method
