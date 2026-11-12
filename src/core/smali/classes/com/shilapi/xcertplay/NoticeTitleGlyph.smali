.class public final Lcom/shilapi/xcertplay/NoticeTitleGlyph;
.super Ljava/lang/Object;
.source "NoticeTitleGlyph.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoticeTitleGlyph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoticeTitleGlyph.kt\ncom/shilapi/xcertplay/NoticeTitleGlyph\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,123:1\n1#2:124\n12667#3,2:125\n*S KotlinDebug\n*F\n+ 1 NoticeTitleGlyph.kt\ncom/shilapi/xcertplay/NoticeTitleGlyph\n*L\n43#1:125,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0015\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008\rJ&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\tJ\u001e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/NoticeTitleGlyph;",
        "",
        "<init>",
        "()V",
        "SCALE",
        "",
        "VARIATION_SELECTOR",
        "",
        "canDraw",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "drawsPixels",
        "drawsPixels$common_release",
        "forTitle",
        "",
        "title",
        "textSizePx",
        "",
        "color",
        "",
        "drawable",
        "setTitle",
        "",
        "view",
        "Landroid/widget/TextView;",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/NoticeTitleGlyph;

.field public static final SCALE:Ljava/lang/String; = "\u2696"

.field private static final VARIATION_SELECTOR:C = '\ufe0f'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/NoticeTitleGlyph;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/NoticeTitleGlyph;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/NoticeTitleGlyph;->INSTANCE:Lcom/shilapi/xcertplay/NoticeTitleGlyph;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canDraw(Landroid/graphics/Paint;)Z
    .locals 2

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/NoticeTitleGlyph;

    const-string/jumbo v0, "\u2696"

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/NoticeTitleGlyph;->drawsPixels$common_release(Landroid/graphics/Paint;)Z

    move-result p1

    return p1
.end method

.method public final drawsPixels$common_release(Landroid/graphics/Paint;)Z
    .locals 10

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 35
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/NoticeTitleGlyph;

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    const v2, 0x3fcccccd    # 1.6f

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-int v5, v0

    .line 37
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v0, "createBitmap(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string/jumbo v3, "\u2696"

    int-to-float v4, v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float v6, v6, v4

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v7

    invoke-virtual {p1, v3, v6, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int p1, v5, v5

    .line 41
    new-array v3, p1, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v8, v5

    move v9, v5

    .line 42
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    .line 125
    aget v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    ushr-int/lit8 v5, v5, 0x18

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 35
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 45
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 35
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 47
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final forTitle(Ljava/lang/String;FIZ)Ljava/lang/CharSequence;
    .locals 7

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string/jumbo v2, "\u2696"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p4, v0, 0x1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p4, v2, :cond_1

    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v2, 0xfe0f

    if-ne p1, v2, :cond_1

    add-int/lit8 p4, v0, 0x2

    :cond_1
    const p1, 0x3f866666    # 1.05f

    mul-float p2, p2, p1

    float-to-double p1, p2

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-int p1, p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 59
    new-instance p2, Lcom/shilapi/xcertplay/BalanceScaleDrawable;

    invoke-direct {p2, p3}, Lcom/shilapi/xcertplay/BalanceScaleDrawable;-><init>(I)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p1, p1}, Lcom/shilapi/xcertplay/BalanceScaleDrawable;->setBounds(IIII)V

    .line 60
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    new-instance p3, Landroid/text/style/ImageSpan;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-direct {p3, p2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 p2, 0x21

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final setTitle(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v2, "getPaint(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Lcom/shilapi/xcertplay/NoticeTitleGlyph;->canDraw(Landroid/graphics/Paint;)Z

    move-result v1

    invoke-virtual {p0, p2, v0, p3, v1}, Lcom/shilapi/xcertplay/NoticeTitleGlyph;->forTitle(Ljava/lang/String;FIZ)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
