.class final Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;
.super Landroid/view/ViewGroup;
.source "ConnectionStatusRow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionStatusRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlowRow"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0014J0\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "hGap",
        "",
        "vGap",
        "<init>",
        "(Landroid/content/Context;II)V",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onLayout",
        "changed",
        "",
        "l",
        "t",
        "r",
        "b",
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
.field private final hGap:I

.field private final vGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->hGap:I

    iput p3, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->vGap:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    sub-int/2addr p4, p2

    .line 233
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 235
    :goto_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->getChildCount()I

    move-result p1

    const/4 p5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge p5, p1, :cond_4

    .line 236
    invoke-virtual {p0, p5}, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-lez v0, :cond_1

    .line 237
    iget v4, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->hGap:I

    add-int/2addr v4, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, p4, :cond_1

    iget v0, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->vGap:I

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_1
    if-lez v0, :cond_2

    .line 238
    iget v4, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->hGap:I

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    add-int/2addr v0, v4

    if-eqz p3, :cond_3

    sub-int v4, p4, v0

    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_3

    :cond_3
    move v4, v0

    .line 240
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 241
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 242
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 219
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 221
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 222
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/high16 v6, -0x80000000

    .line 223
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    if-lez v2, :cond_0

    .line 224
    iget v6, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->hGap:I

    add-int/2addr v6, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-le v6, p1, :cond_0

    iget v2, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->vGap:I

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_0
    if-lez v2, :cond_1

    .line 225
    iget v6, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->hGap:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 226
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->getChildCount()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    add-int v0, v3, v4

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/shilapi/xcertplay/ConnectionStatusRow$FlowRow;->setMeasuredDimension(II)V

    return-void
.end method
