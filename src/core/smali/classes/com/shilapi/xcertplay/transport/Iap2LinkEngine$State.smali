.class public final enum Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;
.super Ljava/lang/Enum;
.source "Iap2LinkEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/transport/Iap2LinkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "DETECTING",
        "NEGOTIATING",
        "NORMAL",
        "DEAD",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

.field public static final enum DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

.field public static final enum DETECTING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

.field public static final enum IDLE:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

.field public static final enum NEGOTIATING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

.field public static final enum NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->IDLE:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DETECTING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NEGOTIATING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->IDLE:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    .line 23
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const-string v1, "DETECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DETECTING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    .line 24
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const-string v1, "NEGOTIATING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NEGOTIATING:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    .line 25
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const-string v1, "NORMAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->NORMAL:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    .line 26
    new-instance v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    const-string v1, "DEAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->DEAD:Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    invoke-static {}, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->$values()[Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->$VALUES:[Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;->$VALUES:[Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/transport/Iap2LinkEngine$State;

    return-object v0
.end method
