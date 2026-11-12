.class public final enum Lcom/shilapi/xcertplay/ScreenRotation$Choice;
.super Ljava/lang/Enum;
.source "CarLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ScreenRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Choice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/ScreenRotation$Choice;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ScreenRotation$Choice;",
        "",
        "key",
        "",
        "degrees",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V",
        "getKey",
        "()Ljava/lang/String;",
        "getDegrees",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "AUTO",
        "R0",
        "R90",
        "R180",
        "R270",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/ScreenRotation$Choice;

.field public static final enum AUTO:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

.field public static final enum R0:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

.field public static final enum R180:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

.field public static final enum R270:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

.field public static final enum R90:Lcom/shilapi/xcertplay/ScreenRotation$Choice;


# instance fields
.field private final degrees:Ljava/lang/Integer;

.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/ScreenRotation$Choice;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    sget-object v1, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->AUTO:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->R0:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->R90:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->R180:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->R270:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 301
    new-instance v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const-string v1, "auto"

    const/4 v2, 0x0

    const-string v3, "AUTO"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->AUTO:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    new-instance v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const-string v1, "0"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "R0"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->R0:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    new-instance v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "R90"

    const/4 v3, 0x2

    const-string v4, "90"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->R90:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    new-instance v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "R180"

    const/4 v3, 0x3

    const-string v4, "180"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->R180:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    new-instance v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "R270"

    const/4 v3, 0x4

    const-string v4, "270"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->R270:Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    invoke-static {}, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->$values()[Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->$VALUES:[Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->degrees:Ljava/lang/Integer;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/ScreenRotation$Choice;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/ScreenRotation$Choice;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/ScreenRotation$Choice;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->$VALUES:[Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/ScreenRotation$Choice;

    return-object v0
.end method


# virtual methods
.method public final getDegrees()Ljava/lang/Integer;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->degrees:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/shilapi/xcertplay/ScreenRotation$Choice;->key:Ljava/lang/String;

    return-object v0
.end method
