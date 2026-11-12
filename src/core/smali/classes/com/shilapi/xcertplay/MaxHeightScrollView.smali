.class public final Lcom/shilapi/xcertplay/MaxHeightScrollView;
.super Landroid/widget/ScrollView;
.source "MaxHeightScrollView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/MaxHeightScrollView;",
        "Landroid/widget/ScrollView;",
        "context",
        "Landroid/content/Context;",
        "maxHeightPx",
        "",
        "<init>",
        "(Landroid/content/Context;I)V",
        "getMaxHeightPx",
        "()I",
        "setMaxHeightPx",
        "(I)V",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
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
.field private maxHeightPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/shilapi/xcertplay/MaxHeightScrollView;->maxHeightPx:I

    return-void
.end method


# virtual methods
.method public final getMaxHeightPx()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/shilapi/xcertplay/MaxHeightScrollView;->maxHeightPx:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez v0, :cond_0

    .line 14
    iget p2, p0, Lcom/shilapi/xcertplay/MaxHeightScrollView;->maxHeightPx:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shilapi/xcertplay/MaxHeightScrollView;->maxHeightPx:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    const/high16 v0, -0x80000000

    .line 15
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method public final setMaxHeightPx(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/shilapi/xcertplay/MaxHeightScrollView;->maxHeightPx:I

    return-void
.end method
