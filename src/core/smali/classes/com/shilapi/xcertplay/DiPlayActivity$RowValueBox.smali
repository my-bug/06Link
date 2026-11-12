.class final Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;
.super Landroid/widget/FrameLayout;
.source "DiPlayActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/DiPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RowValueBox"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "name",
        "Landroid/widget/TextView;",
        "chevron",
        "chevronGap",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)V",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
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
.field private final chevron:Landroid/widget/TextView;

.field private final chevronGap:I

.field private final name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chevron"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4943
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4942
    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->name:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->chevron:Landroid/widget/TextView;

    iput p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->chevronGap:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9

    .line 4946
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 4947
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->chevronGap:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->chevron:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string/jumbo v2, "\u203a"

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->chevron:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->chevron:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4948
    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 4949
    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 4952
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    if-ltz v3, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4953
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v6, v8, :cond_0

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-le v6, v7, :cond_1

    .line 4954
    iget-object v8, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->name:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v1, v7, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_1
    add-int/lit8 v7, v6, 0x1

    :cond_2
    if-eq v6, v3, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v1, v1, v0

    .line 4958
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$RowValueBox;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float v1, v0, v1

    float-to-int v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 4959
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4960
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 4962
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
