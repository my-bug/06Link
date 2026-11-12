.class public final enum Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;
.super Ljava/lang/Enum;
.source "ConnectionFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WirelessReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "OK",
        "NO_RECEIVER",
        "RECEIVER_NOT_ALLOWED",
        "NOT_PAIRED",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

.field public static final enum NOT_PAIRED:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

.field public static final enum NO_RECEIVER:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

.field public static final enum OK:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

.field public static final enum RECEIVER_NOT_ALLOWED:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->OK:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->NO_RECEIVER:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->RECEIVER_NOT_ALLOWED:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->NOT_PAIRED:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 313
    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->OK:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    const-string v1, "NO_RECEIVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->NO_RECEIVER:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    const-string v1, "RECEIVER_NOT_ALLOWED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->RECEIVER_NOT_ALLOWED:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    new-instance v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    const-string v1, "NOT_PAIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->NOT_PAIRED:Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    invoke-static {}, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->$values()[Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->$VALUES:[Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;->$VALUES:[Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/ConnectionUi$WirelessReady;

    return-object v0
.end method
