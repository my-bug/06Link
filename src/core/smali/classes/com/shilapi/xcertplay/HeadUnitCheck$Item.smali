.class public final Lcom/shilapi/xcertplay/HeadUnitCheck$Item;
.super Ljava/lang/Object;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010 R\u0011\u0010&\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010 \u00a8\u0006("
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Item;",
        "",
        "name",
        "",
        "mark",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;",
        "detail",
        "",
        "how",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Text;",
        "fix",
        "Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;",
        "hard",
        "",
        "action",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Action;",
        "actionArg",
        "",
        "live",
        "<init>",
        "(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;Z)V",
        "getName",
        "()I",
        "getMark",
        "()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;",
        "getDetail",
        "()Ljava/util/List;",
        "getHow",
        "()Lcom/shilapi/xcertplay/HeadUnitCheck$Text;",
        "getFix",
        "()Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;",
        "getHard",
        "()Z",
        "getAction",
        "()Lcom/shilapi/xcertplay/HeadUnitCheck$Action;",
        "getActionArg",
        "()Ljava/lang/String;",
        "getLive",
        "failed",
        "getFailed",
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


# instance fields
.field private final action:Lcom/shilapi/xcertplay/HeadUnitCheck$Action;

.field private final actionArg:Ljava/lang/String;

.field private final detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fix:Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

.field private final hard:Z

.field private final how:Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

.field private final live:Z

.field private final mark:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

.field private final name:I


# direct methods
.method public constructor <init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Text;",
            "Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;",
            "Z",
            "Lcom/shilapi/xcertplay/HeadUnitCheck$Action;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "mark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->name:I

    .line 28
    iput-object p2, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->mark:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    .line 30
    iput-object p3, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->detail:Ljava/util/List;

    .line 32
    iput-object p4, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->how:Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    .line 33
    iput-object p5, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->fix:Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    .line 35
    iput-boolean p6, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->hard:Z

    .line 36
    iput-object p7, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->action:Lcom/shilapi/xcertplay/HeadUnitCheck$Action;

    .line 37
    iput-object p8, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->actionArg:Ljava/lang/String;

    .line 39
    iput-boolean p9, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->live:Z

    return-void
.end method

.method public synthetic constructor <init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p10, 0x8

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1

    move-object p5, v0

    :cond_1
    and-int/lit8 p11, p10, 0x20

    const/4 v1, 0x0

    if-eqz p11, :cond_2

    const/4 p6, 0x0

    :cond_2
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_3

    move-object p7, v0

    :cond_3
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_4

    move-object p8, v0

    :cond_4
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_5

    const/4 p10, 0x0

    goto :goto_0

    :cond_5
    move p10, p9

    :goto_0
    move-object p9, p8

    move-object p8, p7

    move p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 26
    invoke-direct/range {p1 .. p10}, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;-><init>(ILcom/shilapi/xcertplay/HeadUnitCheck$Mark;Ljava/util/List;Lcom/shilapi/xcertplay/HeadUnitCheck$Text;Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;ZLcom/shilapi/xcertplay/HeadUnitCheck$Action;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getAction()Lcom/shilapi/xcertplay/HeadUnitCheck$Action;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->action:Lcom/shilapi/xcertplay/HeadUnitCheck$Action;

    return-object v0
.end method

.method public final getActionArg()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->actionArg:Ljava/lang/String;

    return-object v0
.end method

.method public final getDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->detail:Ljava/util/List;

    return-object v0
.end method

.method public final getFailed()Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->mark:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->WARN:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->mark:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    sget-object v1, Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;->BAD:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getFix()Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->fix:Lcom/shilapi/xcertplay/HeadUnitFixes$Fix;

    return-object v0
.end method

.method public final getHard()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->hard:Z

    return v0
.end method

.method public final getHow()Lcom/shilapi/xcertplay/HeadUnitCheck$Text;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->how:Lcom/shilapi/xcertplay/HeadUnitCheck$Text;

    return-object v0
.end method

.method public final getLive()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->live:Z

    return v0
.end method

.method public final getMark()Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->mark:Lcom/shilapi/xcertplay/HeadUnitCheck$Mark;

    return-object v0
.end method

.method public final getName()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Item;->name:I

    return v0
.end method
