.class public final Lcom/shilapi/xcertplay/StepSegmentsView;
.super Landroid/view/View;
.source "ConnectionStatusRow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/StepSegmentsView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "segments",
        "Lcom/shilapi/xcertplay/ConnectionUi$Segments;",
        "paint",
        "Landroid/graphics/Paint;",
        "rect",
        "Landroid/graphics/RectF;",
        "show",
        "",
        "value",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
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
.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;

.field private segments:Lcom/shilapi/xcertplay/ConnectionUi$Segments;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 258
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/StepSegmentsView;->paint:Landroid/graphics/Paint;

    .line 259
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/StepSegmentsView;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/shilapi/xcertplay/StepSegmentsView;->segments:Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x4

    int-to-float v1, v1

    .line 271
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/StepSegmentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    .line 272
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/StepSegmentsView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getCount()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 273
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/StepSegmentsView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 274
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getCount()I

    move-result v5

    if-gt v4, v5, :cond_5

    const/4 v6, 0x1

    .line 275
    :goto_0
    iget-object v7, p0, Lcom/shilapi/xcertplay/StepSegmentsView;->paint:Landroid/graphics/Paint;

    .line 276
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getCurrent()I

    move-result v8

    if-ge v6, v8, :cond_1

    sget-object v8, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/Glass;->getGOOD()I

    move-result v8

    goto :goto_1

    .line 277
    :cond_1
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getCurrent()I

    move-result v8

    if-ne v6, v8, :cond_3

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getStuck()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/Glass;->getBAD()I

    move-result v8

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/Glass;->getACCENT()I

    move-result v8

    goto :goto_1

    .line 278
    :cond_3
    sget-object v8, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v8}, Lcom/shilapi/xcertplay/Glass;->getDIVIDER()I

    move-result v8

    .line 275
    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v7, v6, -0x1

    int-to-float v7, v7

    add-float v8, v2, v1

    mul-float v7, v7, v8

    .line 281
    move-object v8, p0

    check-cast v8, Landroid/view/View;

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    if-ne v8, v4, :cond_4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/StepSegmentsView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v7

    sub-float v7, v8, v2

    .line 282
    :cond_4
    iget-object v8, p0, Lcom/shilapi/xcertplay/StepSegmentsView;->rect:Landroid/graphics/RectF;

    add-float v9, v7, v2

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/StepSegmentsView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v11, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 283
    iget-object v7, p0, Lcom/shilapi/xcertplay/StepSegmentsView;->rect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/shilapi/xcertplay/StepSegmentsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v3, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eq v6, v5, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public final show(Lcom/shilapi/xcertplay/ConnectionUi$Segments;)V
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/shilapi/xcertplay/StepSegmentsView;->segments:Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getCurrent()I

    move-result v1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getCurrent()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getStuck()Z

    move-result v0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ConnectionUi$Segments;->getStuck()Z

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 264
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/StepSegmentsView;->segments:Lcom/shilapi/xcertplay/ConnectionUi$Segments;

    .line 265
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/StepSegmentsView;->invalidate()V

    return-void
.end method
