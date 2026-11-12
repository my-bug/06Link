.class final enum Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;
.super Ljava/lang/Enum;
.source "SafeAreaEditorView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/SafeAreaEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Edge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "LEFT",
        "TOP",
        "RIGHT",
        "BOTTOM",
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

.field private static final synthetic $VALUES:[Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

.field public static final enum BOTTOM:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

.field public static final enum LEFT:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

.field public static final enum RIGHT:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

.field public static final enum TOP:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;


# direct methods
.method private static final synthetic $values()[Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    sget-object v1, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->LEFT:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->TOP:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->RIGHT:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->BOTTOM:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->LEFT:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    .line 16
    new-instance v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    const-string v1, "TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->TOP:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    .line 17
    new-instance v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->RIGHT:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    .line 18
    new-instance v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->BOTTOM:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    invoke-static {}, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->$values()[Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->$VALUES:[Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;
    .locals 1

    const-class v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    return-object p0
.end method

.method public static values()[Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;
    .locals 1

    sget-object v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->$VALUES:[Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    return-object v0
.end method
