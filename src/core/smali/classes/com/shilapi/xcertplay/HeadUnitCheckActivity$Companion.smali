.class public final Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;
.super Ljava/lang/Object;
.source "HeadUnitCheckActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/HeadUnitCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "TAG_CURRENT_ROW",
        "TICK_MILLIS",
        "",
        "REQUEST_FIX_PAGE",
        "",
        "PORTRAIT_ACTION_DP",
        "RAIL_GAP_DP",
        "RAIL_MIN_DP",
        "RAIL_MAX_DP",
        "COMMON_COUNT",
        "getCOMMON_COUNT",
        "()I",
        "cached",
        "Lcom/shilapi/xcertplay/HeadUnitCheck$Result;",
        "getCached",
        "()Lcom/shilapi/xcertplay/HeadUnitCheck$Result;",
        "setCached",
        "(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCOMMON_COUNT()I
    .locals 1

    .line 705
    sget-object v0, Lcom/shilapi/xcertplay/HeadUnitCheck;->INSTANCE:Lcom/shilapi/xcertplay/HeadUnitCheck;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/HeadUnitCheck;->getCOMMON_NAMES()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCached()Lcom/shilapi/xcertplay/HeadUnitCheck$Result;
    .locals 1

    .line 707
    # getter for: Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->cached:Lcom/shilapi/xcertplay/HeadUnitCheck$Result;
    invoke-static {}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->access$getCached$cp()Lcom/shilapi/xcertplay/HeadUnitCheck$Result;

    move-result-object v0

    return-object v0
.end method

.method public final setCached(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V
    .locals 0

    .line 707
    invoke-static {p1}, Lcom/shilapi/xcertplay/HeadUnitCheckActivity;->access$setCached$cp(Lcom/shilapi/xcertplay/HeadUnitCheck$Result;)V

    return-void
.end method
