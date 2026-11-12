.class final Lcom/shilapi/xcertplay/Glass$Backdrop;
.super Landroid/graphics/drawable/Drawable;
.source "Glass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/Glass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Backdrop"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlass.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Glass.kt\ncom/shilapi/xcertplay/Glass$Backdrop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,261:1\n1#2:262\n1878#3,3:263\n*S KotlinDebug\n*F\n+ 1 Glass.kt\ncom/shilapi/xcertplay/Glass$Backdrop\n*L\n175#1:263,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0014J0\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u0012\u0010\u001b\u001a\u00020\u000b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0015H\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/Glass$Backdrop;",
        "Landroid/graphics/drawable/Drawable;",
        "palette",
        "Lcom/shilapi/xcertplay/Glass$Palette;",
        "<init>",
        "(Lcom/shilapi/xcertplay/Glass$Palette;)V",
        "base",
        "Landroid/graphics/Paint;",
        "glows",
        "",
        "onBoundsChange",
        "",
        "bounds",
        "Landroid/graphics/Rect;",
        "glow",
        "paint",
        "x",
        "",
        "y",
        "radius",
        "color",
        "",
        "draw",
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
.field private final base:Landroid/graphics/Paint;

.field private final glows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private final palette:Lcom/shilapi/xcertplay/Glass$Palette;


# direct methods
.method public constructor <init>(Lcom/shilapi/xcertplay/Glass$Palette;)V
    .locals 4

    const-string v0, "palette"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/Glass$Backdrop;->palette:Lcom/shilapi/xcertplay/Glass$Palette;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/Glass$Backdrop;->base:Landroid/graphics/Paint;

    .line 168
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/Glass$Palette;->getGlows$common_release()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/shilapi/xcertplay/Glass$Backdrop;->glows:Ljava/util/List;

    return-void
.end method

.method private final glow(Landroid/graphics/Paint;FFFI)V
    .locals 7

    .line 179
    new-instance v0, Landroid/graphics/RadialGradient;

    invoke-static {p5}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v2, 0x3

    div-int/2addr v1, v2

    invoke-static {p5}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p5}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v3, 0x0

    filled-new-array {p5, v1, v3}, [I

    move-result-object v4

    .line 180
    new-array v5, v2, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, p2

    move v2, p3

    move v3, p4

    .line 179
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/Glass$Backdrop;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "getBounds(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/shilapi/xcertplay/Glass$Backdrop;->base:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 186
    iget-object v1, p0, Lcom/shilapi/xcertplay/Glass$Backdrop;->glows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v5

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v6

    .line 173
    iget-object p1, p0, Lcom/shilapi/xcertplay/Glass$Backdrop;->base:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/shilapi/xcertplay/Glass$Backdrop;->palette:Lcom/shilapi/xcertplay/Glass$Palette;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass$Palette;->getBackdrop$common_release()[I

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v2, Landroid/graphics/Shader;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 174
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 175
    iget-object v0, p0, Lcom/shilapi/xcertplay/Glass$Backdrop;->palette:Lcom/shilapi/xcertplay/Glass$Palette;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass$Palette;->getGlows$common_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 264
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/shilapi/xcertplay/Glass$Glow;

    .line 175
    iget-object v4, p0, Lcom/shilapi/xcertplay/Glass$Backdrop;->glows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass$Glow;->getX()F

    move-result v1

    mul-float v9, v5, v1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass$Glow;->getY()F

    move-result v1

    mul-float v10, v6, v1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass$Glow;->getRadius()F

    move-result v1

    mul-float v11, p1, v1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/Glass$Glow;->getColor()I

    move-result v12

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/shilapi/xcertplay/Glass$Backdrop;->glow(Landroid/graphics/Paint;FFFI)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
