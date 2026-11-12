.class public final Lcom/shilapi/xcertplay/FitText;
.super Landroid/widget/TextView;
.source "CarLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005H\u0014J(\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0007H\u0002J\u0018\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006$"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/FitText;",
        "Landroid/widget/TextView;",
        "context",
        "Landroid/content/Context;",
        "lines",
        "",
        "minSp",
        "",
        "<init>",
        "(Landroid/content/Context;IF)V",
        "chosenPx",
        "probe",
        "Landroid/text/TextPaint;",
        "oneLineMinSp",
        "getOneLineMinSp",
        "()F",
        "setOneLineMinSp",
        "(F)V",
        "setTextSize",
        "",
        "unit",
        "size",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "shrink",
        "maxLines",
        "floorSp",
        "width",
        "sp",
        "linesAt",
        "px",
        "cjk",
        "",
        "char",
        "",
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
.field private chosenPx:F

.field private final lines:I

.field private final minSp:F

.field private oneLineMinSp:F

.field private final probe:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/shilapi/xcertplay/FitText;->lines:I

    iput p3, p0, Lcom/shilapi/xcertplay/FitText;->minSp:F

    .line 170
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/FitText;->probe:Landroid/text/TextPaint;

    return-void
.end method

.method private final cjk(C)Z
    .locals 1

    const/16 v0, 0x2e80

    if-gt v0, p1, :cond_0

    const v0, 0xa000

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xf900

    if-gt v0, p1, :cond_1

    const v0, 0xfb00

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0xff00

    if-gt v0, p1, :cond_2

    const v0, 0xfff0

    if-ge p1, v0, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final linesAt(FI)I
    .locals 11

    .line 205
    iget-object v0, p0, Lcom/shilapi/xcertplay/FitText;->probe:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 206
    iget-object v0, p0, Lcom/shilapi/xcertplay/FitText;->probe:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 207
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/shilapi/xcertplay/FitText;->probe:Landroid/text/TextPaint;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    .line 213
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 214
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 215
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v4, 0x1

    .line 217
    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/FitText;->cjk(C)Z

    move-result v8

    if-nez v8, :cond_1

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v9, v8, :cond_1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lcom/shilapi/xcertplay/FitText;->cjk(C)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 218
    :cond_1
    iget-object v8, p0, Lcom/shilapi/xcertplay/FitText;->probe:Landroid/text/TextPaint;

    invoke-virtual {v8, p1, v4, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    int-to-float v8, p2

    cmpl-float v10, v4, v8

    if-lez v10, :cond_2

    const p1, 0x7fffffff

    return p1

    :cond_2
    cmpl-float v10, v6, v2

    if-lez v10, :cond_3

    if-eqz v7, :cond_3

    add-float v7, v0, v4

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    cmpl-float v10, v6, v2

    if-lez v10, :cond_4

    add-float v10, v6, v7

    cmpl-float v8, v10, v8

    if-lez v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    move v6, v4

    goto :goto_4

    :cond_4
    add-float/2addr v6, v7

    :goto_4
    move v4, v9

    goto :goto_0

    :cond_5
    return v5
.end method

.method private final shrink(IFIF)F
    .locals 3

    .line 198
    iget v0, p0, Lcom/shilapi/xcertplay/FitText;->chosenPx:F

    :goto_0
    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v1, p4, v1

    sub-float v1, v0, v1

    mul-float v2, p2, p4

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 199
    invoke-direct {p0, v0, p3}, Lcom/shilapi/xcertplay/FitText;->linesAt(FI)I

    move-result v2

    if-le v2, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public final getOneLineMinSp()F
    .locals 1

    .line 176
    iget v0, p0, Lcom/shilapi/xcertplay/FitText;->oneLineMinSp:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 185
    iget v0, p0, Lcom/shilapi/xcertplay/FitText;->chosenPx:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/shilapi/xcertplay/FitText;->chosenPx:F

    .line 186
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitText;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_4

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "getText(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 189
    iget v3, p0, Lcom/shilapi/xcertplay/FitText;->oneLineMinSp:F

    const/4 v4, 0x1

    cmpl-float v5, v3, v1

    if-lez v5, :cond_1

    invoke-direct {p0, v4, v3, v0, v2}, Lcom/shilapi/xcertplay/FitText;->shrink(IFIF)F

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    cmpl-float v1, v3, v1

    if-lez v1, :cond_2

    .line 190
    invoke-direct {p0, v3, v0}, Lcom/shilapi/xcertplay/FitText;->linesAt(FI)I

    move-result v1

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/shilapi/xcertplay/FitText;->lines:I

    iget v3, p0, Lcom/shilapi/xcertplay/FitText;->minSp:F

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/shilapi/xcertplay/FitText;->shrink(IFIF)F

    move-result v3

    .line 191
    :goto_1
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitText;->getTextSize()F

    move-result v0

    cmpg-float v0, v3, v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-super {p0, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public final setOneLineMinSp(F)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/shilapi/xcertplay/FitText;->oneLineMinSp:F

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/FitText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/shilapi/xcertplay/FitText;->chosenPx:F

    return-void
.end method
