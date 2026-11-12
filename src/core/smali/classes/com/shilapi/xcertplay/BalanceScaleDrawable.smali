.class public final Lcom/shilapi/xcertplay/BalanceScaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NoticeTitleGlyph.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0003H\u0016J\u0012\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0003H\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/BalanceScaleDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "color",
        "",
        "<init>",
        "(I)V",
        "paint",
        "Landroid/graphics/Paint;",
        "path",
        "Landroid/graphics/Path;",
        "oval",
        "Landroid/graphics/RectF;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "setAlpha",
        "alpha",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "getOpacity",
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
.field private color:I

.field private final oval:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->color:I

    .line 73
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 74
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 76
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 73
    iput-object p1, p0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    .line 78
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->path:Landroid/graphics/Path;

    .line 79
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->oval:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "getBounds(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v7, v3

    .line 84
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v8, v3

    const/4 v3, 0x0

    cmpg-float v4, v7, v3

    if-lez v4, :cond_1

    cmpg-float v3, v8, v3

    if-gtz v3, :cond_0

    goto/16 :goto_1

    .line 86
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v3

    .line 87
    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v2

    .line 88
    iget-object v2, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v2, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41300000    # 11.0f

    div-float v3, v7, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v7, v2

    add-float/2addr v2, v9

    const v3, 0x3e0f5c29    # 0.14f

    mul-float v3, v3, v8

    add-float/2addr v3, v10

    const v4, 0x3f5c28f6    # 0.86f

    mul-float v4, v4, v8

    add-float v5, v10, v4

    .line 92
    iget-object v6, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v11, v2

    move v12, v3

    const v1, 0x3e23d70a    # 0.16f

    mul-float v1, v1, v7

    add-float v2, v9, v1

    const v1, 0x3e851eb8    # 0.26f

    mul-float v1, v1, v8

    add-float v3, v10, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float v1, v1, v7

    add-float v4, v9, v1

    .line 93
    iget-object v6, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    move v5, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v13, v3

    const v1, 0x3e99999a    # 0.3f

    mul-float v1, v1, v7

    add-float v2, v9, v1

    const v1, 0x3f6147ae    # 0.88f

    mul-float v1, v1, v8

    add-float v3, v10, v1

    const v14, 0x3f333333    # 0.7f

    mul-float v1, v7, v14

    add-float v4, v9, v1

    .line 94
    iget-object v6, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    move v5, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget-object v2, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float v2, v2, v14

    iget-object v3, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v11, 0x2

    .line 97
    new-array v12, v11, [F

    fill-array-data v12, :array_0

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v11, :cond_1

    aget v2, v12, v15

    mul-float v2, v2, v7

    add-float/2addr v2, v9

    .line 99
    iget-object v3, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 100
    iget-object v3, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 101
    iget-object v3, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->path:Landroid/graphics/Path;

    const v4, 0x3df5c28f    # 0.12f

    mul-float v4, v4, v7

    sub-float v5, v2, v4

    const v6, 0x3f147ae1    # 0.58f

    mul-float v6, v6, v8

    add-float/2addr v6, v10

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    iget-object v3, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 103
    iget-object v3, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->path:Landroid/graphics/Path;

    add-float/2addr v4, v2

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 104
    iget-object v3, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 105
    iget-object v3, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->oval:Landroid/graphics/RectF;

    const v4, 0x3e19999a    # 0.15f

    mul-float v4, v4, v7

    sub-float v5, v2, v4

    const v6, 0x3eeb851f    # 0.46f

    mul-float v6, v6, v8

    add-float/2addr v6, v10

    add-float/2addr v2, v4

    mul-float v4, v8, v14

    add-float/2addr v4, v10

    invoke-virtual {v3, v5, v6, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    iget-object v2, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->oval:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3e23d70a    # 0.16f
        0x3f570a3d    # 0.84f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 117
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->invalidateSelf()V

    return-void
.end method
