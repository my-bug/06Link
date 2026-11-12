.class public final Lcom/shilapi/xcertplay/SafeAreaEditorView;
.super Landroid/view/View;
.source "SafeAreaEditorView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;,
        Lcom/shilapi/xcertplay/SafeAreaEditorView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeAreaEditorView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeAreaEditorView.kt\ncom/shilapi/xcertplay/SafeAreaEditorView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1#2:188\n774#3:189\n865#3,2:190\n2423#3,14:192\n*S KotlinDebug\n*F\n+ 1 SafeAreaEditorView.kt\ncom/shilapi/xcertplay/SafeAreaEditorView\n*L\n161#1:189\n161#1:190,2\n162#1:192,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u00011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0012J\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000fJ(\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012H\u0014J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0014J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0016J\u0008\u0010(\u001a\u00020%H\u0016J\"\u0010)\u001a\u0004\u0018\u00010\u00152\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u000fH\u0002J(\u0010-\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0007H\u0002J(\u0010/\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0018\u001a\u0002002\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/SafeAreaEditorView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "density",
        "",
        "touchRadius",
        "dimPaint",
        "Landroid/graphics/Paint;",
        "linePaint",
        "borderPaint",
        "textPaint",
        "rect",
        "Lcom/shilapi/xcertplay/airplay/SafeAreaRect;",
        "sourceRect",
        "sourceWidth",
        "",
        "sourceHeight",
        "activeEdge",
        "Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;",
        "setRect",
        "",
        "value",
        "sourceWidthPixels",
        "sourceHeightPixels",
        "currentRectForSource",
        "onSizeChanged",
        "width",
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
        "nearestEdge",
        "x",
        "y",
        "safe",
        "moveEdge",
        "edge",
        "drawLabel",
        "",
        "Edge",
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
.field private activeEdge:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

.field private final borderPaint:Landroid/graphics/Paint;

.field private final density:F

.field private final dimPaint:Landroid/graphics/Paint;

.field private final linePaint:Landroid/graphics/Paint;

.field private rect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

.field private sourceHeight:I

.field private sourceRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

.field private sourceWidth:I

.field private final textPaint:Landroid/graphics/Paint;

.field private final touchRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->density:F

    const/high16 v0, 0x42200000    # 40.0f

    mul-float v0, v0, p1

    .line 22
    iput v0, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->touchRadius:F

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0x76

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->dimPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v2, 0xcd

    const/16 v3, 0x9a

    const/16 v4, 0x7f

    .line 25
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v2, v2, p1

    .line 26
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iput-object v0, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->linePaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v2, 0xd2

    const/16 v3, 0xff

    .line 30
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v2, v2, p1

    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iput-object v0, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->borderPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, -0x1

    .line 35
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41700000    # 15.0f

    mul-float p1, p1, v2

    .line 36
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    mul-float p1, p1, v2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 34
    iput-object v0, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->textPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->setClickable(Z)V

    return-void
.end method

.method private final drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 6

    .line 177
    iget v0, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    .line 178
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->density:F

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    .line 179
    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v2

    .line 180
    iget-object v3, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    iget v4, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->density:F

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    .line 181
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->density:F

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    .line 182
    invoke-static {p3, v0, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p3

    .line 183
    invoke-static {p4, v3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p4

    .line 184
    iget-object v0, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final moveEdge(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;FF)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 7

    float-to-int p3, p3

    .line 166
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p3

    float-to-int p4, p4

    .line 167
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result v0

    invoke-static {p4, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p4

    .line 168
    sget-object v0, Lcom/shilapi/xcertplay/SafeAreaEditorView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result p3

    invoke-static {p4, p2, p3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->copy$default(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    move-object v0, p1

    const/4 p1, 0x1

    .line 171
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getLeft()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result p1

    invoke-static {p3, p2, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->copy$default(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v0, p1

    const/4 p1, 0x1

    .line 170
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getBottom()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-static {p4, v1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->copy$default(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v0, p1

    const/4 p1, 0x1

    .line 169
    invoke-virtual {v0}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getRight()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-static {p3, v1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->copy$default(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIIIILjava/lang/Object;)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    return-object p1
.end method

.method private final nearestEdge(FFLcom/shilapi/xcertplay/airplay/SafeAreaRect;)Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;
    .locals 4

    const/4 v0, 0x4

    .line 157
    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->LEFT:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 158
    sget-object v1, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->RIGHT:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 159
    sget-object p1, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->TOP:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 160
    sget-object p1, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;->BOTTOM:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getBottom()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 156
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 189
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 190
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lkotlin/Pair;

    .line 161
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->touchRadius:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 190
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 162
    check-cast p2, Ljava/lang/Iterable;

    .line 192
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 193
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    move-object p2, p3

    goto :goto_1

    .line 194
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 195
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 196
    :cond_3
    move-object v0, p2

    check-cast v0, Lkotlin/Pair;

    .line 162
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 198
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 199
    move-object v2, v1

    check-cast v2, Lkotlin/Pair;

    .line 162
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 200
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_5

    move-object p2, v1

    move v0, v2

    .line 204
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 162
    :goto_1
    check-cast p2, Lkotlin/Pair;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    return-object p1

    :cond_6
    return-object p3
.end method


# virtual methods
.method public final currentRectForSource()Lcom/shilapi/xcertplay/airplay/SafeAreaRect;
    .locals 7

    .line 70
    iget-object v0, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    if-eqz v0, :cond_0

    return-object v0

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->rect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    const/4 v0, 0x0

    if-nez v2, :cond_1

    return-object v0

    .line 72
    :cond_1
    iget v1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceWidth:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceHeight:I

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    sget-object v1, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceWidth:I

    iget v6, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceHeight:I

    invoke-virtual/range {v1 .. v6}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleRect(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIII)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v1, "canvas"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v6, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->rect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    if-nez v6, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result v1

    int-to-float v3, v1

    .line 92
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result v1

    int-to-float v7, v1

    .line 93
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getLeft()I

    move-result v1

    int-to-float v8, v1

    .line 94
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getTop()I

    move-result v1

    int-to-float v2, v1

    .line 95
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getRight()I

    move-result v1

    int-to-float v9, v1

    .line 96
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getBottom()I

    move-result v1

    int-to-float v10, v1

    move v4, v2

    const/4 v2, 0x0

    .line 98
    iget-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->dimPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v11, v4

    .line 99
    iget-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->dimPaint:Landroid/graphics/Paint;

    move v4, v7

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v7, v3

    move v10, v4

    move v4, v2

    .line 100
    iget-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->dimPaint:Landroid/graphics/Paint;

    move v3, v8

    move v2, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    iget-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->dimPaint:Landroid/graphics/Paint;

    move v3, v7

    move v1, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->borderPaint:Landroid/graphics/Paint;

    move v3, v1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v8, v3

    move v9, v4

    const/4 v2, 0x0

    .line 104
    iget-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->linePaint:Landroid/graphics/Paint;

    move v3, v1

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v10, v1

    .line 105
    iget-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->linePaint:Landroid/graphics/Paint;

    move v3, v8

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 106
    iget-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->linePaint:Landroid/graphics/Paint;

    move v4, v11

    move v3, v7

    move v2, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 107
    iget-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->linePaint:Landroid/graphics/Paint;

    move v4, v9

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v4, v2

    .line 109
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getLeft()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->density:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float v7, v2, v5

    add-float/2addr v7, v10

    const/high16 v9, 0x41a00000    # 20.0f

    mul-float v2, v2, v9

    add-float/2addr v2, v11

    invoke-direct {p0, p1, v1, v7, v2}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 110
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getRight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->density:F

    mul-float v3, v2, v5

    add-float/2addr v3, v8

    mul-float v2, v2, v5

    sub-float v2, v4, v2

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 111
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getTop()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "y="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->density:F

    mul-float v7, v2, v5

    add-float/2addr v7, v10

    mul-float v2, v2, v5

    sub-float v2, v11, v2

    invoke-direct {p0, p1, v1, v7, v2}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 112
    invoke-virtual {v6}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->getBottom()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->density:F

    const/high16 v3, 0x42b00000    # 88.0f

    mul-float v3, v3, v2

    sub-float v3, v8, v3

    mul-float v2, v2, v9

    add-float v10, v4, v2

    invoke-direct {p0, p1, v1, v3, v10}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iget-object p3, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    if-nez p3, :cond_1

    sget-object p3, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;

    invoke-virtual {p3, p1, p2}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->default(II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p3

    :cond_1
    move-object v1, p3

    .line 80
    iget p3, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceWidth:I

    if-lez p3, :cond_2

    iget p3, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceHeight:I

    if-lez p3, :cond_2

    .line 81
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;

    iget v2, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceWidth:I

    iget v3, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceHeight:I

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleRect(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIII)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v4, p1

    move v5, p2

    .line 83
    invoke-virtual {v1, v4, v5}, Lcom/shilapi/xcertplay/airplay/SafeAreaRect;->clampTo(II)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    .line 80
    :goto_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->rect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    .line 85
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->rect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_4

    .line 147
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->activeEdge:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    if-nez v2, :cond_2

    return v1

    .line 125
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->moveEdge(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;FF)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object v5

    .line 126
    iput-object v5, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->rect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    .line 127
    iget p1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceWidth:I

    if-lez p1, :cond_3

    iget p1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceHeight:I

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result p1

    if-lez p1, :cond_3

    .line 128
    sget-object v4, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;

    .line 130
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result v6

    .line 131
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result v7

    .line 132
    iget v8, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceWidth:I

    .line 133
    iget v9, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceHeight:I

    .line 128
    invoke-virtual/range {v4 .. v9}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleRect(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIII)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->invalidate()V

    return v1

    :cond_4
    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->activeEdge:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    .line 143
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->performClick()Z

    return v1

    .line 119
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v2, p1, v0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->nearestEdge(FFLcom/shilapi/xcertplay/airplay/SafeAreaRect;)Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->activeEdge:Lcom/shilapi/xcertplay/SafeAreaEditorView$Edge;

    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 151
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final setRect(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;II)V
    .locals 6

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 54
    iput p2, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceWidth:I

    .line 55
    iput p3, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceHeight:I

    .line 56
    iput-object p1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceRect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    .line 57
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result p2

    if-lez p2, :cond_0

    .line 58
    sget-object v0, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->INSTANCE:Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;

    .line 60
    iget v2, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceWidth:I

    .line 61
    iget v3, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->sourceHeight:I

    .line 62
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getWidth()I

    move-result v4

    .line 63
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->getHeight()I

    move-result v5

    move-object v1, p1

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/shilapi/xcertplay/airplay/AirPlaySafeArea;->scaleRect(Lcom/shilapi/xcertplay/airplay/SafeAreaRect;IIII)Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/SafeAreaEditorView;->rect:Lcom/shilapi/xcertplay/airplay/SafeAreaRect;

    .line 65
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/SafeAreaEditorView;->invalidate()V

    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source dimensions must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
