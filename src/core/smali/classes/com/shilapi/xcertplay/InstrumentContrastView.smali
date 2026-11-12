.class final Lcom/shilapi/xcertplay/InstrumentContrastView;
.super Landroid/view/View;
.source "ClusterMapPresentation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/InstrumentContrastView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "plan",
        "Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;",
        "background",
        "",
        "<init>",
        "(Landroid/content/Context;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;I)V",
        "paint",
        "Landroid/graphics/Paint;",
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
.field private final background:I

.field private final paint:Landroid/graphics/Paint;

.field private final plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 167
    iput-object p2, p0, Lcom/shilapi/xcertplay/InstrumentContrastView;->plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    .line 168
    iput p3, p0, Lcom/shilapi/xcertplay/InstrumentContrastView;->background:I

    .line 170
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/InstrumentContrastView;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private static final onDraw$fade(Lcom/shilapi/xcertplay/InstrumentContrastView;Landroid/graphics/Canvas;FFFFIIFFFF)V
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/shilapi/xcertplay/InstrumentContrastView;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    check-cast v1, Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 178
    iget-object p0, p0, Lcom/shilapi/xcertplay/InstrumentContrastView;->paint:Landroid/graphics/Paint;

    move-object/from16 p7, p0

    move-object p2, p1

    move/from16 p3, p8

    move/from16 p4, p9

    move/from16 p5, p10

    move/from16 p6, p11

    invoke-virtual/range {p2 .. p7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "canvas"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    iget-object v1, v0, Lcom/shilapi/xcertplay/InstrumentContrastView;->plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/shilapi/xcertplay/InstrumentContrastView;->plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getTop()I

    move-result v3

    int-to-float v3, v3

    .line 174
    iget-object v4, v0, Lcom/shilapi/xcertplay/InstrumentContrastView;->plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float v10, v1, v4

    iget-object v4, v0, Lcom/shilapi/xcertplay/InstrumentContrastView;->plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v12, v3, v4

    .line 180
    iget v4, v0, Lcom/shilapi/xcertplay/InstrumentContrastView;->background:I

    const v5, 0xffffff

    and-int v6, v4, v5

    and-int/2addr v4, v5

    const/high16 v5, -0x2e000000

    or-int v13, v4, v5

    .line 182
    iget-object v4, v0, Lcom/shilapi/xcertplay/InstrumentContrastView;->plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    invoke-virtual {v4}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getFullMap()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x40

    int-to-float v4, v4

    add-float v5, v3, v4

    move v7, v6

    .line 183
    iget v6, v0, Lcom/shilapi/xcertplay/InstrumentContrastView;->background:I

    move v4, v1

    move v8, v1

    move v9, v3

    move v11, v5

    move-object/from16 v16, v2

    move v2, v1

    move-object/from16 v1, v16

    invoke-static/range {v0 .. v11}, Lcom/shilapi/xcertplay/InstrumentContrastView;->onDraw$fade(Lcom/shilapi/xcertplay/InstrumentContrastView;Landroid/graphics/Canvas;FFFFIIFFFF)V

    move v14, v3

    const/16 v1, 0x30

    int-to-float v1, v1

    sub-float v3, v12, v1

    move v6, v7

    .line 184
    iget v7, v0, Lcom/shilapi/xcertplay/InstrumentContrastView;->background:I

    move v4, v2

    move v8, v2

    move v9, v3

    move v11, v12

    move-object/from16 v1, p1

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/shilapi/xcertplay/InstrumentContrastView;->onDraw$fade(Lcom/shilapi/xcertplay/InstrumentContrastView;Landroid/graphics/Canvas;FFFFIIFFFF)V

    move v11, v5

    move v7, v6

    move v12, v10

    const/16 v0, 0x1cc

    int-to-float v15, v0

    add-float v4, v2, v15

    move v5, v14

    move v9, v14

    move v10, v4

    move-object/from16 v0, p0

    move v6, v13

    move v3, v14

    .line 186
    invoke-static/range {v0 .. v11}, Lcom/shilapi/xcertplay/InstrumentContrastView;->onDraw$fade(Lcom/shilapi/xcertplay/InstrumentContrastView;Landroid/graphics/Canvas;FFFFIIFFFF)V

    sub-float v2, v12, v15

    move v5, v3

    move v8, v2

    move v9, v3

    move v10, v12

    move v0, v7

    move v7, v6

    move v6, v0

    move-object/from16 v0, p0

    move v4, v12

    .line 187
    invoke-static/range {v0 .. v11}, Lcom/shilapi/xcertplay/InstrumentContrastView;->onDraw$fade(Lcom/shilapi/xcertplay/InstrumentContrastView;Landroid/graphics/Canvas;FFFFIIFFFF)V

    .line 189
    :cond_0
    iget-object v1, v0, Lcom/shilapi/xcertplay/InstrumentContrastView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
