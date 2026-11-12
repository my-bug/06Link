.class public final Lcom/shilapi/xcertplay/DiagnosticPanels;
.super Ljava/lang/Object;
.source "DiagnosticPanels.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/DiagnosticPanels$Action;,
        Lcom/shilapi/xcertplay/DiagnosticPanels$LineAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiagnosticPanels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiagnosticPanels.kt\ncom/shilapi/xcertplay/DiagnosticPanels\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1#2:204\n1878#3,3:205\n*S KotlinDebug\n*F\n+ 1 DiagnosticPanels.kt\ncom/shilapi/xcertplay/DiagnosticPanels\n*L\n108#1:205,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002$%B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ:\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ.\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005J<\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020\u001fH\u0002J\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/DiagnosticPanels;",
        "",
        "<init>",
        "()V",
        "MAX_LINE_CHARS",
        "",
        "showReportViewer",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "report",
        "",
        "extraActions",
        "",
        "Lcom/shilapi/xcertplay/DiagnosticPanels$Action;",
        "reportViewerContent",
        "Landroid/view/View;",
        "lines",
        "widthPx",
        "heightPx",
        "actions",
        "downloadPanel",
        "url",
        "interfaceName",
        "text",
        "Landroid/widget/TextView;",
        "value",
        "sp",
        "",
        "color",
        "bold",
        "",
        "mono",
        "button",
        "Landroid/widget/Button;",
        "action",
        "Action",
        "LineAdapter",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/DiagnosticPanels;

.field private static final MAX_LINE_CHARS:I = 0x3e8


# direct methods
.method public static synthetic $r8$lambda$KS6SWsmDK-CxmRyGDGVVV4RF-u0(Landroid/widget/ListView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$lambda$3(Landroid/widget/ListView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eTjS3J1nq3TJFVnqKhWgHiejAGA(Landroid/app/Dialog;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/DiagnosticPanels;->showReportViewer$lambda$0(Landroid/app/Dialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fyl8Z5XP7tOImLYP59viX4BHsjk(Landroid/widget/ListView;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$lambda$4(Landroid/widget/ListView;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rMsaCJ01GtkgjFoJnQq5yK-NdSg(Lcom/shilapi/xcertplay/DiagnosticPanels$Action;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/DiagnosticPanels;->button$lambda$27$lambda$26(Lcom/shilapi/xcertplay/DiagnosticPanels$Action;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/DiagnosticPanels;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/DiagnosticPanels;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/DiagnosticPanels;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticPanels;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final button(Landroid/content/Context;Lcom/shilapi/xcertplay/DiagnosticPanels$Action;)Landroid/widget/Button;
    .locals 12

    .line 166
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 168
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 171
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v3, 0x2

    .line 172
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMaxLines(I)V

    .line 173
    invoke-virtual {p2}, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->getPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getON_PRIMARY()I

    move-result v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 174
    const-string v3, "sans-serif-medium"

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 175
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getRIPPLE()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const-string/jumbo v4, "valueOf(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v5, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {p2}, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->getPrimary()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/shilapi/xcertplay/Glass$Kind;->PRIMARY:Lcom/shilapi/xcertplay/Glass$Kind;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/shilapi/xcertplay/Glass$Kind;->CONTROL:Lcom/shilapi/xcertplay/Glass$Kind;

    :goto_1
    move-object v7, v4

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v5 .. v11}, Lcom/shilapi/xcertplay/Glass;->panel$default(Lcom/shilapi/xcertplay/Glass;Landroid/content/Context;Lcom/shilapi/xcertplay/Glass$Kind;FLcom/shilapi/xcertplay/Glass$Palette;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v4, 0x0

    .line 175
    invoke-static {v3, p1, v4}, Lcom/shilapi/xcertplay/LegacyViewsKt;->rippleCompat(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x38

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 177
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Landroid/widget/Button;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinimumHeight(I)V

    const/16 p1, 0xc

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    const/4 v3, 0x6

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    .line 178
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 179
    invoke-static {v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->clearStateListAnimatorCompat(Landroid/view/View;)V

    .line 180
    new-instance p1, Lcom/shilapi/xcertplay/DiagnosticPanels$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Lcom/shilapi/xcertplay/DiagnosticPanels$$ExternalSyntheticLambda4;-><init>(Lcom/shilapi/xcertplay/DiagnosticPanels$Action;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final button$lambda$27$lambda$26(Lcom/shilapi/xcertplay/DiagnosticPanels$Action;Landroid/view/View;)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;->getRun()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final downloadPanel$dp$16(FI)I
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static final reportViewerContent$dp(FI)I
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static final reportViewerContent$lambda$3(Landroid/widget/ListView;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reportViewerContent$lambda$4(Landroid/widget/ListView;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final showReportViewer$lambda$0(Landroid/app/Dialog;)Lkotlin/Unit;
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final text(Landroid/content/Context;Ljava/lang/String;FIZZ)Landroid/widget/TextView;
    .locals 3

    .line 153
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 157
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p6, :cond_0

    .line 159
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-eqz p5, :cond_1

    .line 160
    const-string p2, "sans-serif-medium"

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 161
    :cond_1
    const-string p2, "sans-serif"

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 158
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method static synthetic text$default(Lcom/shilapi/xcertplay/DiagnosticPanels;Landroid/content/Context;Ljava/lang/String;FIZZILjava/lang/Object;)Landroid/widget/TextView;
    .locals 1

    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1

    const/4 p6, 0x0

    .line 152
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/shilapi/xcertplay/DiagnosticPanels;->text(Landroid/content/Context;Ljava/lang/String;FIZZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final downloadPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move/from16 v3, p4

    move/from16 v4, p5

    const-string v5, "context"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "url"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "interfaceName"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lt v3, v4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    const/16 v5, 0xf0

    .line 126
    invoke-static {v9, v5}, Lcom/shilapi/xcertplay/DiagnosticPanels;->downloadPanel$dp$16(FI)I

    move-result v5

    int-to-float v4, v4

    const v6, 0x3ed70a3d    # 0.42f

    mul-float v4, v4, v6

    float-to-int v4, v4

    int-to-float v3, v3

    if-eqz v12, :cond_1

    const v6, 0x3ea3d70a    # 0.32f

    goto :goto_1

    :cond_1
    const v6, 0x3f1eb852    # 0.62f

    :goto_1
    mul-float v3, v3, v6

    float-to-int v3, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x60

    .line 127
    invoke-static {v9, v4}, Lcom/shilapi/xcertplay/DiagnosticPanels;->downloadPanel$dp$16(FI)I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 128
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 129
    sget v4, Lcom/shilapi/xcertplay/host/R$id;->diag209_qr:I

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setId(I)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 130
    invoke-static/range {v2 .. v8}, Lcom/shilapi/xcertplay/QrBitmap;->renderText$default(Ljava/lang/String;IIILcom/shilapi/xcertplay/qr/QrMatrix$Ec;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v4

    move v14, v3

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 135
    sget v2, Lcom/shilapi/xcertplay/host/R$string;->diag209_http_body:I

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v10

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v4

    const/16 v7, 0x30

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/DiagnosticPanels;->text$default(Lcom/shilapi/xcertplay/DiagnosticPanels;Landroid/content/Context;Ljava/lang/String;FIZZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v15, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    sget-object v0, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v4

    const/16 v7, 0x10

    const/4 v0, -0x2

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v10, -0x1

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/DiagnosticPanels;->text$default(Lcom/shilapi/xcertplay/DiagnosticPanels;Landroid/content/Context;Ljava/lang/String;FIZZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v2

    sget v0, Lcom/shilapi/xcertplay/host/R$id;->diag209_url:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    check-cast v2, Landroid/view/View;

    .line 137
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-static {v9, v4}, Lcom/shilapi/xcertplay/DiagnosticPanels;->downloadPanel$dp$16(FI)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 136
    invoke-virtual {v15, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    xor-int/lit8 v2, v12, 0x1

    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    if-eqz v12, :cond_2

    const/16 v11, 0x10

    .line 140
    :cond_2
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0x14

    .line 141
    invoke-static {v9, v4}, Lcom/shilapi/xcertplay/DiagnosticPanels;->downloadPanel$dp$16(FI)I

    move-result v5

    const/16 v6, 0xc

    invoke-static {v9, v6}, Lcom/shilapi/xcertplay/DiagnosticPanels;->downloadPanel$dp$16(FI)I

    move-result v7

    invoke-static {v9, v4}, Lcom/shilapi/xcertplay/DiagnosticPanels;->downloadPanel$dp$16(FI)I

    move-result v4

    const/16 v8, 0x8

    invoke-static {v9, v8}, Lcom/shilapi/xcertplay/DiagnosticPanels;->downloadPanel$dp$16(FI)I

    move-result v8

    invoke-virtual {v0, v5, v7, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 143
    check-cast v13, Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    check-cast v15, Landroid/view/View;

    if-eqz v12, :cond_3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v6, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v9, v2}, Lcom/shilapi/xcertplay/DiagnosticPanels;->downloadPanel$dp$16(FI)I

    move-result v2

    invoke-static {v5, v2}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    .line 145
    :cond_3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v9, v6}, Lcom/shilapi/xcertplay/DiagnosticPanels;->downloadPanel$dp$16(FI)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 144
    invoke-virtual {v0, v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v10, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v10, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    check-cast v2, Landroid/view/View;

    return-object v2
.end method

.method public final reportViewerContent(Landroid/content/Context;Ljava/util/List;IILjava/util/List;)Landroid/view/View;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/DiagnosticPanels$Action;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p5

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lines"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v13, 0x1

    const/4 v14, 0x0

    move/from16 v0, p4

    if-lt v10, v0, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 67
    :goto_0
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 68
    sget v2, Lcom/shilapi/xcertplay/host/R$id;->diag209_report_list:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setId(I)V

    .line 69
    new-instance v2, Lcom/shilapi/xcertplay/DiagnosticPanels$LineAdapter;

    invoke-direct {v2, v1, v9}, Lcom/shilapi/xcertplay/DiagnosticPanels$LineAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getDIVIDER()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {v0, v13}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 72
    invoke-virtual {v0, v14}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 73
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 74
    invoke-virtual {v0, v14}, Landroid/widget/ListView;->setBackgroundColor(I)V

    const/16 v2, 0x8

    .line 75
    invoke-static {v12, v2}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v12, v4}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v5

    invoke-static {v12, v2}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v6

    invoke-static {v12, v4}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v4

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 76
    invoke-virtual {v0, v14}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 78
    sget v3, Lcom/shilapi/xcertplay/host/R$string;->diag_view_on_screen:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/Glass;->getTEXT()I

    move-result v5

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v2, v3

    const/16 v6, 0x8

    const/high16 v3, 0x41900000    # 18.0f

    move-object/from16 v16, v4

    move v4, v5

    const/4 v5, 0x1

    const/16 v17, 0x8

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object v14, v0

    move-object/from16 v19, v16

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/DiagnosticPanels;->text$default(Lcom/shilapi/xcertplay/DiagnosticPanels;Landroid/content/Context;Ljava/lang/String;FIZZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v16

    .line 79
    sget v0, Lcom/shilapi/xcertplay/host/R$string;->diag209_view_count:I

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v2, v3, v18

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/Glass;->getMUTED()I

    move-result v4

    const/16 v7, 0x30

    const/high16 v3, 0x41500000    # 13.0f

    const/4 v5, 0x0

    const/16 v17, 0x1

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Lcom/shilapi/xcertplay/DiagnosticPanels;->text$default(Lcom/shilapi/xcertplay/DiagnosticPanels;Landroid/content/Context;Ljava/lang/String;FIZZILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v0, 0x2

    .line 81
    new-array v3, v0, [Lcom/shilapi/xcertplay/DiagnosticPanels$Action;

    new-instance v20, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;

    sget v4, Lcom/shilapi/xcertplay/host/R$string;->diag209_view_top:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v5, Lcom/shilapi/xcertplay/DiagnosticPanels$$ExternalSyntheticLambda1;

    invoke-direct {v5, v14}, Lcom/shilapi/xcertplay/DiagnosticPanels$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ListView;)V

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    .line 81
    invoke-direct/range {v20 .. v25}, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v20, v3, v18

    .line 82
    new-instance v4, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;

    sget v5, Lcom/shilapi/xcertplay/host/R$string;->diag209_view_bottom:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v7, Lcom/shilapi/xcertplay/DiagnosticPanels$$ExternalSyntheticLambda2;

    invoke-direct {v7, v14, v9}, Lcom/shilapi/xcertplay/DiagnosticPanels$$ExternalSyntheticLambda2;-><init>(Landroid/widget/ListView;Ljava/util/List;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 82
    invoke-direct/range {v4 .. v9}, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v4, v3, v17

    .line 80
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 83
    move-object v4, v11

    check-cast v4, Ljava/lang/Iterable;

    .line 80
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 84
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    xor-int/lit8 v5, v15, 0x1

    .line 85
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    sget-object v5, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v5}, Lcom/shilapi/xcertplay/Glass;->getBASE()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v5, 0xc

    .line 87
    invoke-static {v12, v5}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v6

    invoke-static {v12, v5}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v7

    invoke-static {v12, v5}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v8

    invoke-static {v12, v5}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    if-eqz v15, :cond_3

    .line 91
    move-object v9, v14

    check-cast v9, Landroid/view/View;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    invoke-direct {v11, v13, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v6, v10

    const v9, 0x3e8f5c29    # 0.28f

    mul-float v6, v6, v9

    float-to-int v6, v6

    const/16 v9, 0xa8

    .line 92
    invoke-static {v12, v9}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v9

    const/16 v11, 0x118

    invoke-static {v12, v11}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v11

    invoke-static {v6, v9, v11}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v6

    div-int/lit8 v0, v10, 0x2

    invoke-static {v6, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    .line 93
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    .line 94
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    move-object/from16 v9, v16

    check-cast v9, Landroid/view/View;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    check-cast v2, Landroid/view/View;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x8

    invoke-static {v12, v10}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v11

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;

    move-object/from16 v9, p0

    invoke-direct {v9, v1, v3}, Lcom/shilapi/xcertplay/DiagnosticPanels;->button(Landroid/content/Context;Lcom/shilapi/xcertplay/DiagnosticPanels$Action;)Landroid/widget/Button;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v12, v10}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    move-object/from16 v9, p0

    .line 100
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    check-cast v6, Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 101
    check-cast v2, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v12, v5}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v3

    invoke-static {v0, v3}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_3
    move-object/from16 v9, p0

    const/16 v10, 0x8

    .line 103
    move-object/from16 v0, v16

    check-cast v0, Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    check-cast v2, Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v12, v10}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    move-object v0, v14

    check-cast v0, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    invoke-direct {v2, v7, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    check-cast v3, Ljava/lang/Iterable;

    const/4 v0, 0x3

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 107
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 108
    check-cast v2, Ljava/lang/Iterable;

    .line 206
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v13, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v11, v13, 0x1

    if-gez v13, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v5, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;

    .line 109
    sget-object v14, Lcom/shilapi/xcertplay/DiagnosticPanels;->INSTANCE:Lcom/shilapi/xcertplay/DiagnosticPanels;

    invoke-direct {v14, v1, v5}, Lcom/shilapi/xcertplay/DiagnosticPanels;->button(Landroid/content/Context;Lcom/shilapi/xcertplay/DiagnosticPanels$Action;)Landroid/widget/Button;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, 0x0

    invoke-direct {v14, v15, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-lez v13, :cond_5

    move-object v13, v14

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v12, v10}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v6

    invoke-static {v13, v6}, Lcom/shilapi/xcertplay/LegacyViewsKt;->setMarginStartCompat(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    :cond_5
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v14, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v5, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v13, v11

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 111
    check-cast v3, Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v12, v10}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent$dp(FI)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3

    .line 114
    :cond_7
    :goto_5
    check-cast v4, Landroid/view/View;

    return-object v4
.end method

.method public final showReportViewer(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shilapi/xcertplay/DiagnosticPanels$Action;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraActions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103012a

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 45
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 46
    check-cast p3, Ljava/util/Collection;

    new-instance p2, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;

    sget v2, Lcom/shilapi/xcertplay/host/R$string;->close:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/shilapi/xcertplay/DiagnosticPanels$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/shilapi/xcertplay/DiagnosticPanels$$ExternalSyntheticLambda3;-><init>(Landroid/app/Dialog;)V

    invoke-direct {p2, v2, v1, v3}, Lcom/shilapi/xcertplay/DiagnosticPanels$Action;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    .line 44
    invoke-virtual/range {v3 .. v8}, Lcom/shilapi/xcertplay/DiagnosticPanels;->reportViewerContent(Landroid/content/Context;Ljava/util/List;IILjava/util/List;)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v1, Lcom/shilapi/xcertplay/Glass;->INSTANCE:Lcom/shilapi/xcertplay/Glass;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/Glass;->getBASE()I

    move-result v1

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p1, p3, p3}, Landroid/view/Window;->setLayout(II)V

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/shilapi/xcertplay/E01Dialogs;->showDialog(Landroid/app/Dialog;)V

    .line 54
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/shilapi/xcertplay/CarDisplay;->INSTANCE:Lcom/shilapi/xcertplay/CarDisplay;

    invoke-virtual {p2, p1}, Lcom/shilapi/xcertplay/CarDisplay;->textDirection(Landroid/view/View;)V

    :cond_1
    return-object v0
.end method
