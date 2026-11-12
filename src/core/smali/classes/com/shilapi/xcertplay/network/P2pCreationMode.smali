.class public final enum Lcom/shilapi/xcertplay/network/P2pCreationMode;
.super Ljava/lang/Enum;
.source "P2pStartupRecovery.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/network/P2pCreationMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/P2pCreationMode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ALIGNED_5_GHZ",
        "ALIGNED_2_GHZ",
        "FIXED_5_GHZ",
        "FIXED_2_GHZ",
        "SYSTEM_DEFAULT",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/network/P2pCreationMode;

.field public static final enum ALIGNED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

.field public static final enum ALIGNED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

.field public static final enum FIXED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

.field public static final enum FIXED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

.field public static final enum SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/network/P2pCreationMode;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/shilapi/xcertplay/network/P2pCreationMode;

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pCreationMode;->ALIGNED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pCreationMode;->ALIGNED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pCreationMode;->SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const-string v1, "ALIGNED_5_GHZ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/P2pCreationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;->ALIGNED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    new-instance v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const-string v1, "ALIGNED_2_GHZ"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/P2pCreationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;->ALIGNED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    new-instance v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const-string v1, "FIXED_5_GHZ"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/P2pCreationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_5_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    new-instance v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const-string v1, "FIXED_2_GHZ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/P2pCreationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;->FIXED_2_GHZ:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    new-instance v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;

    const-string v1, "SYSTEM_DEFAULT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/network/P2pCreationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;->SYSTEM_DEFAULT:Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-static {}, Lcom/shilapi/xcertplay/network/P2pCreationMode;->$values()[Lcom/shilapi/xcertplay/network/P2pCreationMode;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;->$VALUES:[Lcom/shilapi/xcertplay/network/P2pCreationMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/network/P2pCreationMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/network/P2pCreationMode;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/network/P2pCreationMode;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/network/P2pCreationMode;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/network/P2pCreationMode;->$VALUES:[Lcom/shilapi/xcertplay/network/P2pCreationMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/network/P2pCreationMode;

    return-object v0
.end method
