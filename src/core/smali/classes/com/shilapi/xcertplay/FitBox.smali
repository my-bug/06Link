.class public final Lcom/shilapi/xcertplay/FitBox;
.super Landroid/widget/FrameLayout;
.source "CarLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/FitBox$Group;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001fB\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0014J \u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\tH\u0002J0\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0011H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006 "
    }
    d2 = {
        "Lcom/shilapi/xcertplay/FitBox;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "group",
        "Lcom/shilapi/xcertplay/FitBox$Group;",
        "<init>",
        "(Landroid/content/Context;Lcom/shilapi/xcertplay/FitBox$Group;)V",
        "needed",
        "",
        "measuredForScale",
        "appliedScale",
        "getAppliedScale",
        "()F",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "measureChildAt",
        "child",
        "Landroid/view/View;",
        "innerWidth",
        "scale",
        "onLayout",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "Group",
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
.field private final group:Lcom/shilapi/xcertplay/FitBox$Group;

.field private measuredForScale:F

.field private needed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shilapi/xcertplay/FitBox$Group;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/FitBox;->group:Lcom/shilapi/xcertplay/FitBox$Group;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 106
    iput p1, p0, Lcom/shilapi/xcertplay/FitBox;->needed:F

    .line 107
    iput p1, p0, Lcom/shilapi/xcertplay/FitBox;->measuredForScale:F

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/FitBox$Group;->getBoxes$common_release()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/shilapi/xcertplay/FitBox$Group;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 100
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shilapi/xcertplay/FitBox;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/FitBox$Group;)V

    return-void
.end method

.method public static final synthetic access$getNeeded$p(Lcom/shilapi/xcertplay/FitBox;)F
    .locals 0

    .line 100
    iget p0, p0, Lcom/shilapi/xcertplay/FitBox;->needed:F

    return p0
.end method

.method private final measureChildAt(Landroid/view/View;IF)V
    .locals 0

    .line 139
    iput p3, p0, Lcom/shilapi/xcertplay/FitBox;->measuredForScale:F

    int-to-float p2, p2

    div-float/2addr p2, p3

    float-to-int p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    .line 141
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 p3, 0x0

    .line 142
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 140
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public final getAppliedScale()F
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/FitBox;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/FitBox;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    iget p2, p0, Lcom/shilapi/xcertplay/FitBox;->needed:F

    iget-object p3, p0, Lcom/shilapi/xcertplay/FitBox;->group:Lcom/shilapi/xcertplay/FitBox$Group;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/FitBox$Group;->scale$common_release()F

    move-result p3

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 149
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 150
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingTop()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    .line 151
    iget p5, p0, Lcom/shilapi/xcertplay/FitBox;->measuredForScale:F

    cmpg-float p5, p2, p5

    if-gez p5, :cond_2

    invoke-direct {p0, p1, p3, p2}, Lcom/shilapi/xcertplay/FitBox;->measureChildAt(Landroid/view/View;IF)V

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p5, p3

    .line 153
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p5, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotX(F)V

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lcom/shilapi/xcertplay/FitBox;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 117
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 118
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    if-nez v1, :cond_0

    .line 119
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/FitBox;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 120
    invoke-direct {p0, v1, v0, v3}, Lcom/shilapi/xcertplay/FitBox;->measureChildAt(Landroid/view/View;IF)V

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_2

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v2, v5, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingTop()I

    move-result p2

    sub-int p2, v4, p2

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitBox;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    .line 128
    iput v3, p0, Lcom/shilapi/xcertplay/FitBox;->needed:F

    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, p2, :cond_3

    int-to-float p2, p2

    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    .line 132
    invoke-direct {p0, v1, v0, v2}, Lcom/shilapi/xcertplay/FitBox;->measureChildAt(Landroid/view/View;IF)V

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/shilapi/xcertplay/FitBox;->needed:F

    .line 135
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/shilapi/xcertplay/FitBox;->setMeasuredDimension(II)V

    return-void
.end method
