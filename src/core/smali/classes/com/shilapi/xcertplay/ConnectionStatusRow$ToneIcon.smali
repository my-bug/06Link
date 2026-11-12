.class final Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;
.super Landroid/view/View;
.source "ConnectionStatusRow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/ConnectionStatusRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToneIcon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionStatusRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionStatusRow.kt\ncom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,296:1\n1#2:297\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0014R$\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "value",
        "Lcom/shilapi/xcertplay/ConnectionUi$Tone;",
        "tone",
        "getTone",
        "()Lcom/shilapi/xcertplay/ConnectionUi$Tone;",
        "setTone",
        "(Lcom/shilapi/xcertplay/ConnectionUi$Tone;)V",
        "paint",
        "Landroid/graphics/Paint;",
        "fill",
        "oval",
        "Landroid/graphics/RectF;",
        "onDraw",
        "",
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
.field private final fill:Landroid/graphics/Paint;

.field private final oval:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;

.field private tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 168
    sget-object p1, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->INFO:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    .line 170
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->paint:Landroid/graphics/Paint;

    .line 171
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->fill:Landroid/graphics/Paint;

    .line 172
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->oval:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final getTone()Lcom/shilapi/xcertplay/ConnectionUi$Tone;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 176
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 177
    iget-object v2, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->paint:Landroid/graphics/Paint;

    const v3, 0x40266666    # 2.6f

    mul-float v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 179
    iget-object v2, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->oval:Landroid/graphics/RectF;

    sub-float v3, v1, v0

    invoke-virtual {v2, v0, v0, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 180
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    sget-object v2, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 184
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v0

    goto :goto_0

    .line 180
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 183
    :cond_1
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getBAD()I

    move-result v0

    goto :goto_0

    .line 182
    :cond_2
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getGOOD()I

    move-result v0

    goto :goto_0

    .line 181
    :cond_3
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getACCENT()I

    move-result v0

    .line 186
    :goto_0
    iget-object v4, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v4, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    sget-object v5, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v3, :cond_6

    if-eq v4, v2, :cond_5

    .line 200
    iget-object v3, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->oval:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 201
    iget-object v3, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->fill:Landroid/graphics/Paint;

    const v3, 0x3f147ae1    # 0.58f

    mul-float v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    sget-object v3, Lcom/shilapi/xcertplay/ConnectionUi$Tone;->BAD:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    if-ne v0, v3, :cond_4

    const-string v0, "!"

    goto :goto_1

    :cond_4
    const-string v0, "i"

    :goto_1
    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float v2, v1, v3

    iget-object v3, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->oval:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    int-to-float v0, v2

    div-float v4, v1, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    sub-float v3, v4, v0

    const v0, 0x3d23d70a    # 0.04f

    mul-float v0, v0, v1

    sub-float v5, v4, v0

    const v0, 0x3e23d70a    # 0.16f

    mul-float v0, v0, v1

    add-float v6, v4, v0

    .line 196
    iget-object v7, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const p1, 0x3e6147ae    # 0.22f

    mul-float p1, p1, v1

    add-float v8, v4, p1

    const p1, 0x3e0f5c29    # 0.14f

    mul-float v1, v1, p1

    sub-float v9, v4, v1

    .line 197
    iget-object v10, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->paint:Landroid/graphics/Paint;

    move v7, v6

    move v6, v5

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    move-object v2, p1

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    rem-long/2addr v0, v3

    long-to-float p1, v0

    const v0, 0x3eb851ec    # 0.36f

    mul-float v10, p1, v0

    .line 190
    iget-object v9, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->oval:Landroid/graphics/RectF;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->paint:Landroid/graphics/Paint;

    const/high16 v11, 0x43870000    # 270.0f

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 191
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->isShown()Z

    move-result p1

    if-eqz p1, :cond_7

    const-wide/16 v0, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->postInvalidateDelayed(J)V

    :cond_7
    return-void
.end method

.method public final setTone(Lcom/shilapi/xcertplay/ConnectionUi$Tone;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->tone:Lcom/shilapi/xcertplay/ConnectionUi$Tone;

    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRow$ToneIcon;->invalidate()V

    :cond_0
    return-void
.end method
