.class public final Lcom/shilapi/xcertplay/SplitColumn;
.super Landroid/view/ViewGroup;
.source "CarLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarLayout.kt\ncom/shilapi/xcertplay/SplitColumn\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,378:1\n1563#2:379\n1634#2,3:380\n774#2:383\n865#2,2:384\n1869#2,2:386\n1878#2,3:388\n*S KotlinDebug\n*F\n+ 1 CarLayout.kt\ncom/shilapi/xcertplay/SplitColumn\n*L\n239#1:379\n239#1:380,3\n239#1:383\n239#1:384,2\n254#1:386,2\n264#1:388,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\t\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b0\nH\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0014J0\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/SplitColumn;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "gap",
        "",
        "minChild",
        "<init>",
        "(Landroid/content/Context;II)V",
        "shown",
        "",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onLayout",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
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

.field private final minChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/shilapi/xcertplay/SplitColumn;->gap:I

    iput p3, p0, Lcom/shilapi/xcertplay/SplitColumn;->minChild:I

    return-void
.end method

.method private final shown()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 379
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 380
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 239
    invoke-virtual {p0, v2}, Lcom/shilapi/xcertplay/SplitColumn;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 381
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 379
    check-cast v1, Ljava/lang/Iterable;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 384
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 384
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    .line 259
    invoke-direct {p0}, Lcom/shilapi/xcertplay/SplitColumn;->shown()Ljava/util/List;

    move-result-object p1

    .line 260
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 261
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p5, p3

    .line 262
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    mul-int p3, p3, p4

    sub-int/2addr p5, p3

    iget p3, p0, Lcom/shilapi/xcertplay/SplitColumn;->gap:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int p3, p3, v0

    sub-int/2addr p5, p3

    invoke-static {p5, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p3

    .line 263
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingTop()I

    move-result p5

    .line 264
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 389
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    if-gez p2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v1, Landroid/view/View;

    .line 265
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int v5, p5, p4

    invoke-virtual {v1, v3, p5, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 266
    iget v1, p0, Lcom/shilapi/xcertplay/SplitColumn;->gap:I

    add-int/2addr v1, p4

    add-int/2addr p5, v1

    if-lez p3, :cond_2

    .line 267
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-ge p2, v1, :cond_2

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_2
    move p2, v2

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 242
    invoke-direct {p0}, Lcom/shilapi/xcertplay/SplitColumn;->shown()Ljava/util/List;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 244
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 245
    :cond_0
    iget v3, p0, Lcom/shilapi/xcertplay/SplitColumn;->minChild:I

    mul-int v3, v3, v1

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/shilapi/xcertplay/SplitColumn;->gap:I

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 246
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 247
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    if-eq p2, v5, :cond_2

    if-eq p2, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_1

    .line 249
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-nez v1, :cond_3

    const/4 p2, 0x0

    goto :goto_2

    .line 252
    :cond_3
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingTop()I

    move-result p2

    sub-int p2, v3, p2

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingBottom()I

    move-result v4

    sub-int/2addr p2, v4

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/shilapi/xcertplay/SplitColumn;->gap:I

    mul-int v4, v4, v5

    sub-int/2addr p2, v4

    div-int/2addr p2, v1

    invoke-static {p2, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    .line 253
    :goto_2
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SplitColumn;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 254
    check-cast v0, Ljava/lang/Iterable;

    .line 386
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 254
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 255
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/shilapi/xcertplay/SplitColumn;->setMeasuredDimension(II)V

    return-void
.end method
