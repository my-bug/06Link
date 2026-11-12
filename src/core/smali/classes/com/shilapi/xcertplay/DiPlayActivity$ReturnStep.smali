.class final enum Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;
.super Ljava/lang/Enum;
.source "DiPlayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReturnStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "HOTSPOT",
        "PAIR_IPHONE",
        "BLUETOOTH_PERMISSION",
        "LOCATION",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

.field public static final enum BLUETOOTH_PERMISSION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

.field public static final enum HOTSPOT:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

.field public static final enum LOCATION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

.field public static final enum PAIR_IPHONE:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    sget-object v1, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->HOTSPOT:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->PAIR_IPHONE:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->BLUETOOTH_PERMISSION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->LOCATION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    const-string v1, "HOTSPOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->HOTSPOT:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    const-string v1, "PAIR_IPHONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->PAIR_IPHONE:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    const-string v1, "BLUETOOTH_PERMISSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->BLUETOOTH_PERMISSION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    new-instance v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    const-string v1, "LOCATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->LOCATION:Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    invoke-static {}, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->$values()[Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->$VALUES:[Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;->$VALUES:[Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/DiPlayActivity$ReturnStep;

    return-object v0
.end method
