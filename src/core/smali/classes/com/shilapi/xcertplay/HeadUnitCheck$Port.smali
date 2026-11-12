.class public final Lcom/shilapi/xcertplay/HeadUnitCheck$Port;
.super Ljava/lang/Object;
.source "HeadUnitCheck.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Port"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u0015R\u0011\u0010\u001a\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Port;",
        "",
        "preferred",
        "",
        "taken",
        "",
        "self",
        "ownerUid",
        "ownerName",
        "",
        "fallback",
        "<init>",
        "(ILjava/lang/Boolean;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V",
        "getPreferred",
        "()I",
        "getTaken",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getSelf",
        "()Z",
        "getOwnerUid",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getOwnerName",
        "()Ljava/lang/String;",
        "getFallback",
        "moved",
        "getMoved",
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
.field private final fallback:Ljava/lang/Integer;

.field private final ownerName:Ljava/lang/String;

.field private final ownerUid:Ljava/lang/Integer;

.field private final preferred:I

.field private final self:Z

.field private final taken:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(ILjava/lang/Boolean;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->preferred:I

    iput-object p2, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->taken:Ljava/lang/Boolean;

    iput-boolean p3, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->self:Z

    iput-object p4, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->ownerUid:Ljava/lang/Integer;

    .line 67
    iput-object p5, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->ownerName:Ljava/lang/String;

    iput-object p6, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->fallback:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Boolean;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p7, 0x8

    const/4 p8, 0x0

    if-eqz p3, :cond_1

    move-object v4, p8

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    move-object v5, p8

    goto :goto_2

    :cond_2
    move-object v5, p5

    :goto_2
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    move-object v6, p8

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 66
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;-><init>(ILjava/lang/Boolean;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getFallback()Ljava/lang/Integer;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->fallback:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMoved()Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->taken:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->self:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->fallback:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getOwnerName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->ownerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwnerUid()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->ownerUid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPreferred()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->preferred:I

    return v0
.end method

.method public final getSelf()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->self:Z

    return v0
.end method

.method public final getTaken()Ljava/lang/Boolean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/shilapi/xcertplay/HeadUnitCheck$Port;->taken:Ljava/lang/Boolean;

    return-object v0
.end method
