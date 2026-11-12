.class public final Lcom/shilapi/xcertplay/ChipFlow;
.super Landroid/view/ViewGroup;
.source "WheelKeysActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0014J0\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ChipFlow;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "gap",
        "",
        "<init>",
        "(Landroid/content/Context;I)V",
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
.field private final gap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/shilapi/xcertplay/ChipFlow;->gap:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10

    sub-int/2addr p4, p2

    .line 745
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingLeft()I

    move-result p1

    sub-int p1, p4, p1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 746
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x11

    const/4 p5, 0x0

    if-lt p2, p3, :cond_0

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ChipFlow;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 748
    :goto_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v0, p2, :cond_3

    .line 749
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/ChipFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-lez v1, :cond_1

    .line 750
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    if-le v5, p1, :cond_1

    iget v1, p0, Lcom/shilapi/xcertplay/ChipFlow;->gap:I

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_1
    if-eqz p3, :cond_2

    .line 751
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingRight()I

    move-result v5

    sub-int v5, p4, v5

    sub-int/2addr v5, v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    .line 752
    :goto_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 753
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/shilapi/xcertplay/ChipFlow;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 754
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 732
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 734
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 735
    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/ChipFlow;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 736
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    if-lez v6, :cond_0

    .line 737
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    if-le v8, v0, :cond_0

    iget v6, p0, Lcom/shilapi/xcertplay/ChipFlow;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 738
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/shilapi/xcertplay/ChipFlow;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 739
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 741
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingTop()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getPaddingBottom()I

    move-result v0

    add-int/2addr v4, v0

    invoke-static {v4, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/ChipFlow;->setMeasuredDimension(II)V

    return-void
.end method
