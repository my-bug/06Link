.class public final Lcom/shilapi/xcertplay/ClusterMapPresentation;
.super Landroid/app/Presentation;
.source "ClusterMapPresentation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClusterMapPresentation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterMapPresentation.kt\ncom/shilapi/xcertplay/ClusterMapPresentation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u000e\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0019R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ClusterMapPresentation;",
        "Landroid/app/Presentation;",
        "context",
        "Landroid/content/Context;",
        "display",
        "Landroid/view/Display;",
        "theme",
        "Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;",
        "onSurface",
        "Lkotlin/Function1;",
        "Landroid/view/Surface;",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/view/Display;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Lkotlin/jvm/functions/Function1;)V",
        "waitingLabel",
        "Landroid/widget/TextView;",
        "value",
        "outputSurface",
        "getOutputSurface",
        "()Landroid/view/Surface;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setStreamActive",
        "active",
        "",
        "setMapVisible",
        "visible",
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
.field public static final Companion:Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;

.field public static final TAG:Ljava/lang/String; = "DiPlay-Cluster"


# instance fields
.field private final onSurface:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/Surface;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private outputSurface:Landroid/view/Surface;

.field private final theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

.field private waitingLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->Companion:Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/Display;",
            "Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/Surface;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "theme"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSurface"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 40
    iput-object p3, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    .line 41
    iput-object p4, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->onSurface:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 40
    sget-object p3, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->INSTANCE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout;

    invoke-virtual {p3, p1}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->theme(Landroid/content/Context;)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    move-result-object p3

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/ClusterMapPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getOnSurface$p(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->onSurface:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$onCreate$transform(Landroid/view/TextureView;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;)V
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->onCreate$transform(Landroid/view/TextureView;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;)V

    return-void
.end method

.method public static final synthetic access$setOutputSurface$p(Lcom/shilapi/xcertplay/ClusterMapPresentation;Landroid/view/Surface;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->outputSurface:Landroid/view/Surface;

    return-void
.end method

.method private static final onCreate$transform(Landroid/view/TextureView;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;)V
    .locals 4

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44f00000    # 1920.0f

    div-float/2addr v2, v1

    .line 70
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x44340000    # 720.0f

    div-float/2addr v3, v1

    .line 69
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 71
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getSourceLeft()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getSourceTop()I

    move-result p1

    int-to-float p1, p1

    neg-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public final getOutputSurface()Landroid/view/Surface;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->outputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 48
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object p1, Lcom/shilapi/xcertplay/ClusterMapPresentation;->Companion:Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/view/Display;

    move-result-object v0

    const-string v1, "getDisplay(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;->sizeOf(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object p1

    .line 50
    sget-object v0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->INSTANCE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->supported$default(Lcom/shilapi/xcertplay/DiLink51ClusterLayout;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->INSTANCE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    invoke-virtual {v0, v1, p1, v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->plan(IILcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;)Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    move-result-object v2

    .line 52
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->INSTANCE:Lcom/shilapi/xcertplay/DiLink51ClusterLayout;

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    invoke-virtual {p1, v0, v3}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout;->dark(Landroid/content/Context;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x16

    const/16 v3, 0x1e

    const/16 v4, 0xf

    goto :goto_0

    :cond_1
    const/16 v0, 0xda

    const/16 v3, 0xe5

    const/16 v4, 0xcf

    .line 53
    :goto_0
    invoke-static {v4, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 54
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/high16 v5, -0x1000000

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getFullMap()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    if-eqz v2, :cond_5

    .line 58
    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_4
    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    :cond_5
    const/4 v4, -0x1

    if-nez v2, :cond_6

    .line 61
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 62
    :cond_6
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getHeight()I

    move-result v7

    const/16 v8, 0x33

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 63
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getLeft()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getTop()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_2
    if-eqz v2, :cond_8

    .line 66
    new-instance v6, Landroid/view/TextureView;

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v7, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;

    invoke-direct {v7, p0, v6, v2}, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;-><init>(Lcom/shilapi/xcertplay/ClusterMapPresentation;Landroid/view/TextureView;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;)V

    check-cast v7, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v6, v7}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 89
    check-cast v6, Landroid/view/View;

    move-object v7, v5

    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getFullMap()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lcom/shilapi/xcertplay/InstrumentContrastView;

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7, v2, v0}, Lcom/shilapi/xcertplay/InstrumentContrastView;-><init>(Landroid/content/Context;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;I)V

    check-cast v6, Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->theme:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Theme;

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getSourceLeft()I

    move-result v1

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;->getSourceTop()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "layout="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " viewport="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " source="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dark="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiPlay-Cluster"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 94
    :cond_8
    new-instance v0, Landroid/view/SurfaceView;

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v6, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$2;

    invoke-direct {v6, p0}, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$2;-><init>(Lcom/shilapi/xcertplay/ClusterMapPresentation;)V

    check-cast v6, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v6}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 110
    check-cast v0, Landroid/view/View;

    move-object v1, v5

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :goto_3
    new-instance v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->cluster_waiting_for_map:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_9

    if-nez p1, :cond_9

    const v4, -0xbbbbbc

    .line 114
    :cond_9
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41d00000    # 26.0f

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    iput-object v0, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->waitingLabel:Landroid/widget/TextView;

    .line 118
    check-cast v0, Landroid/view/View;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    check-cast v3, Landroid/view/View;

    invoke-static {p0, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;Landroid/view/View;)V

    return-void
.end method

.method public final setMapVisible(Z)V
    .locals 2

    .line 129
    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpg-float v1, v1, p1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public final setStreamActive(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->waitingLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
