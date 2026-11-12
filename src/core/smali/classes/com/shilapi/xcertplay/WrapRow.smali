.class public final Lcom/shilapi/xcertplay/WrapRow;
.super Landroid/view/ViewGroup;
.source "SettingRow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/WrapRow$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingRow.kt\ncom/shilapi/xcertplay/WrapRow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0014J0\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/WrapRow;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "gap",
        "",
        "<init>",
        "(Landroid/content/Context;I)V",
        "value",
        "",
        "stacked",
        "getStacked",
        "()Z",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "Companion",
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
.field public static final Companion:Lcom/shilapi/xcertplay/WrapRow$Companion;

.field public static final SIDE_SHARE:F = 0.42f


# instance fields
.field private final gap:I

.field private stacked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/WrapRow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/WrapRow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/WrapRow;->Companion:Lcom/shilapi/xcertplay/WrapRow$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/shilapi/xcertplay/WrapRow;->gap:I

    return-void
.end method

.method private static final onLayout$place(ZILcom/shilapi/xcertplay/WrapRow;Landroid/view/View;II)V
    .locals 0

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingRight()I

    move-result p0

    sub-int/2addr p1, p0

    sub-int/2addr p1, p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingLeft()I

    move-result p0

    add-int p1, p0, p4

    .line 55
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p5

    invoke-virtual {p3, p1, p5, p0, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public final getStacked()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/WrapRow;->stacked:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 48
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-ne p1, p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-int v1, p4, p2

    .line 50
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    .line 51
    invoke-virtual {p0, p3}, Lcom/shilapi/xcertplay/WrapRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 52
    invoke-virtual {p0, p5}, Lcom/shilapi/xcertplay/WrapRow;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p3

    .line 57
    :goto_1
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingLeft()I

    move-result p3

    sub-int p3, v1, p3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 58
    iget-boolean p4, p0, Lcom/shilapi/xcertplay/WrapRow;->stacked:Z

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    .line 59
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingTop()I

    move-result v5

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/WrapRow;->onLayout$place(ZILcom/shilapi/xcertplay/WrapRow;Landroid/view/View;II)V

    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int v4, p3, p1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingTop()I

    move-result p1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p1, p3

    iget p3, v2, Lcom/shilapi/xcertplay/WrapRow;->gap:I

    add-int v5, p1, p3

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/WrapRow;->onLayout$place(ZILcom/shilapi/xcertplay/WrapRow;Landroid/view/View;II)V

    return-void

    .line 62
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingTop()I

    move-result p4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    sub-int p5, p1, p5

    div-int/lit8 p5, p5, 0x2

    add-int v5, p4, p5

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/WrapRow;->onLayout$place(ZILcom/shilapi/xcertplay/WrapRow;Landroid/view/View;II)V

    if-eqz p2, :cond_3

    .line 63
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v4, p3, p4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    add-int v5, p3, p1

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/WrapRow;->onLayout$place(ZILcom/shilapi/xcertplay/WrapRow;Landroid/view/View;II)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/WrapRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    .line 29
    invoke-virtual {p0, v3}, Lcom/shilapi/xcertplay/WrapRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 30
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    const/high16 v6, -0x80000000

    .line 34
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 37
    :goto_0
    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-lez v6, :cond_1

    .line 39
    iget v8, p0, Lcom/shilapi/xcertplay/WrapRow;->gap:I

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    if-le v7, v0, :cond_1

    add-int/2addr v8, v6

    int-to-float v7, v8

    int-to-float v8, v0

    const v9, 0x3ed70a3d    # 0.42f

    mul-float v8, v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/WrapRow;->stacked:Z

    if-nez v3, :cond_3

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    sub-int/2addr v0, v6

    .line 40
    iget v3, p0, Lcom/shilapi/xcertplay/WrapRow;->gap:I

    sub-int/2addr v0, v3

    .line 41
    :cond_3
    :goto_2
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v0, v5}, Landroid/view/View;->measure(II)V

    .line 42
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/WrapRow;->stacked:Z

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/shilapi/xcertplay/WrapRow;->gap:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 44
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/WrapRow;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/shilapi/xcertplay/WrapRow;->setMeasuredDimension(II)V

    return-void
.end method
