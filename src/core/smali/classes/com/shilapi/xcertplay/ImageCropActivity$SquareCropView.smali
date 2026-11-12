.class final Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;
.super Landroid/view/View;
.source "ImageCropActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ImageCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SquareCropView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u0000 12\u00020\u0001:\u00011B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020!H\u0014J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'H\u0014J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020)H\u0016J\u0008\u0010-\u001a\u0004\u0018\u00010\u0019J\u0008\u0010.\u001a\u00020\u001eH\u0002J\u0008\u0010/\u001a\u00020\u001eH\u0002J\u0010\u00100\u001a\u00020\u00132\u0006\u0010*\u001a\u00020+H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u00062"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "palette",
        "Lcom/shilapi/xcertplay/Glass$Palette;",
        "<init>",
        "(Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Palette;)V",
        "imagePaint",
        "Landroid/graphics/Paint;",
        "dimPaint",
        "borderPaint",
        "gridPaint",
        "matrix",
        "Landroid/graphics/Matrix;",
        "viewport",
        "Landroid/graphics/RectF;",
        "mappedBitmap",
        "minimumScale",
        "",
        "maximumScale",
        "lastX",
        "lastY",
        "lastDistance",
        "value",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "",
        "onSizeChanged",
        "width",
        "",
        "height",
        "oldWidth",
        "oldHeight",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "performClick",
        "cropToSquare",
        "configure",
        "constrainMatrix",
        "pointerDistance",
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
.field public static final CROP_PADDING_DP:F = 24.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView$Companion;

.field public static final MAX_ZOOM:F = 8.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final borderPaint:Landroid/graphics/Paint;

.field private final dimPaint:Landroid/graphics/Paint;

.field private final gridPaint:Landroid/graphics/Paint;

.field private final imagePaint:Landroid/graphics/Paint;

.field private lastDistance:F

.field private lastX:F

.field private lastY:F

.field private final mappedBitmap:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private maximumScale:F

.field private minimumScale:F

.field private final palette:Lcom/shilapi/xcertplay/Glass$Palette;

.field private final viewport:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->Companion:Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Palette;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "palette"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->palette:Lcom/shilapi/xcertplay/Glass$Palette;

    .line 223
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->imagePaint:Landroid/graphics/Paint;

    .line 224
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 225
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getBase()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getBase()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getBase()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xa0

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iput-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->dimPaint:Landroid/graphics/Paint;

    .line 227
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 228
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getText()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    iput-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->borderPaint:Landroid/graphics/Paint;

    .line 232
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 233
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getText()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getText()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/Glass$Palette;->getText()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    const/16 v2, 0x96

    invoke-static {v2, v0, v1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iput-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->gridPaint:Landroid/graphics/Paint;

    .line 237
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    .line 238
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    .line 239
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    .line 240
    iput v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->minimumScale:F

    .line 241
    iput v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->maximumScale:F

    return-void
.end method

.method private final configure()V
    .locals 8

    .line 374
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_0

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    goto :goto_0

    .line 378
    :cond_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    .line 379
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 380
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    div-float/2addr v5, v4

    .line 381
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    div-float/2addr v6, v4

    .line 382
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    div-float/2addr v7, v4

    .line 378
    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 384
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->minimumScale:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v1, v1, v2

    .line 385
    iput v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->maximumScale:F

    .line 386
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 387
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->minimumScale:F

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 388
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    .line 389
    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->minimumScale:F

    mul-float v3, v3, v5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 390
    iget-object v3, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->minimumScale:F

    mul-float v0, v0, v5

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    .line 388
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 392
    invoke-direct {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->constrainMatrix()V

    .line 393
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final constrainMatrix()V
    .locals 6

    .line 397
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x9

    .line 398
    new-array v1, v1, [F

    .line 399
    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    .line 400
    aget v1, v1, v2

    .line 401
    iget v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->minimumScale:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    .line 402
    iget-object v3, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    div-float v4, v2, v1

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v5, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 403
    :cond_1
    iget v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->maximumScale:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    .line 404
    iget-object v3, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    div-float v4, v2, v1

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v5, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 406
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 407
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 410
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 411
    :goto_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 412
    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 413
    :goto_2
    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->mappedBitmap:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    :cond_6
    cmpg-float v2, v0, v3

    if-nez v2, :cond_7

    cmpg-float v2, v1, v3

    if-nez v2, :cond_7

    return-void

    .line 414
    :cond_7
    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private final pointerDistance(Landroid/view/MotionEvent;)F
    .locals 4

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 420
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 421
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public final cropToSquare()Landroid/graphics/Bitmap;
    .locals 10

    .line 342
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    goto/16 :goto_0

    .line 344
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 345
    iget-object v4, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v1

    .line 346
    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 347
    iget-object v5, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 348
    iget v2, v4, Landroid/graphics/RectF;->left:F

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v2, v5

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    .line 349
    iget v5, v4, Landroid/graphics/RectF;->top:F

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v5, v7

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v5

    .line 350
    iget v7, v4, Landroid/graphics/RectF;->right:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-int v7, v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v7, v8, v9}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v7

    .line 351
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v4, v8

    float-to-int v4, v4

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v4, v8, v9}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    sub-int v8, v7, v2

    sub-int v9, v4, v5

    .line 352
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v2, v7

    .line 353
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v4

    .line 354
    div-int/lit8 v5, v5, 0x2

    .line 355
    div-int/lit8 v4, v8, 0x2

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-static {v2, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    sub-int/2addr v5, v4

    .line 356
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-static {v5, v6, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    .line 357
    invoke-static {v0, v2, v4, v8, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "createBitmap(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v6, 0x400

    .line 358
    invoke-static {v6, v6, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    new-instance v6, Landroid/graphics/RectF;

    const/high16 v7, 0x44800000    # 1024.0f

    invoke-direct {v6, v3, v3, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 367
    iget-object v3, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->imagePaint:Landroid/graphics/Paint;

    .line 363
    invoke-virtual {v4, v2, v1, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eq v2, v0, :cond_3

    .line 369
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-object v5

    :cond_4
    :goto_0
    return-object v1
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 263
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->palette:Lcom/shilapi/xcertplay/Glass$Palette;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass$Palette;->getBase()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 265
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->dimPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v8, v2

    .line 266
    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getWidth()I

    move-result p1

    int-to-float v11, p1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getHeight()I

    move-result p1

    int-to-float v12, p1

    iget-object v13, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->dimPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 267
    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v10, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v11, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v12, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v13, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 268
    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v9, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v10, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getWidth()I

    move-result p1

    int-to-float v11, p1

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v12, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v13, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 270
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result p1

    .line 271
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 272
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 273
    invoke-virtual {v8, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 275
    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 276
    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    .line 277
    iget-object v1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v0

    .line 278
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v9, v0, p1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v11, v0, p1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v13, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->gridPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 279
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v9, v0, p1

    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v11, v0, p1

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v12, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v13, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->gridPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 280
    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v9, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float v10, p1, v1

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v11, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float v12, p1, v1

    iget-object v13, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->gridPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 281
    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v9, p1, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v10, p1, v1

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget v11, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->viewport:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v12, p1, v1

    iget-object v13, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->gridPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 258
    invoke-direct {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->configure()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 286
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    .line 333
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 322
    :cond_1
    iput v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastDistance:F

    return v1

    .line 294
    :cond_2
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->pointerDistance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastDistance:F

    return v1

    .line 299
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_5

    .line 300
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->pointerDistance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 301
    iget v3, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastDistance:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_4

    div-float v2, v0, v3

    .line 303
    iget-object v3, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    .line 306
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 307
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v4, v7

    div-float/2addr v4, v6

    .line 303
    invoke-virtual {v3, v2, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 310
    :cond_4
    iput v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastDistance:F

    goto :goto_0

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastX:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastY:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 314
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastX:F

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastY:F

    .line 316
    invoke-direct {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->constrainMatrix()V

    .line 317
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->invalidate()V

    return v1

    .line 328
    :cond_6
    iput v2, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastDistance:F

    .line 329
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->performClick()Z

    return v1

    .line 288
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastX:F

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->lastY:F

    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 337
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->bitmap:Landroid/graphics/Bitmap;

    .line 252
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->configure()V

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ImageCropActivity$SquareCropView;->invalidate()V

    return-void
.end method
