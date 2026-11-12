.class public final Lcom/shilapi/xcertplay/GenericClusterPresentation;
.super Landroid/app/Presentation;
.source "GenericClusterDisplay.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGenericClusterDisplay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GenericClusterDisplay.kt\ncom/shilapi/xcertplay/GenericClusterPresentation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,368:1\n1#2:369\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0014\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u000c0\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0012\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u000e\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001dR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/GenericClusterPresentation;",
        "Landroid/app/Presentation;",
        "context",
        "Landroid/content/Context;",
        "display",
        "Landroid/view/Display;",
        "streamWidth",
        "",
        "streamHeight",
        "onSurface",
        "Lkotlin/Function1;",
        "Landroid/view/Surface;",
        "",
        "waitingText",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/view/Display;IILkotlin/jvm/functions/Function1;Ljava/lang/String;)V",
        "waitingLabel",
        "Landroid/widget/TextView;",
        "value",
        "Landroid/view/SurfaceView;",
        "surfaceView",
        "getSurfaceView",
        "()Landroid/view/SurfaceView;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setStreamActive",
        "active",
        "",
        "waitingShown",
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

.field private final streamHeight:I

.field private final streamWidth:I

.field private surfaceView:Landroid/view/SurfaceView;

.field private waitingLabel:Landroid/widget/TextView;

.field private final waitingText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;IILkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/Display;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/Surface;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSurface"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const-string v0, "E01"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BX11QJ"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 207
    :cond_0
    iput p3, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamWidth:I

    .line 208
    iput p4, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamHeight:I

    .line 209
    iput-object p5, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->onSurface:Lkotlin/jvm/functions/Function1;

    .line 211
    iput-object p6, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->waitingText:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/Display;IILkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 204
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/GenericClusterPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;IILkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getOnSurface$p(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->onSurface:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getStreamHeight$p(Lcom/shilapi/xcertplay/GenericClusterPresentation;)I
    .locals 0

    .line 204
    iget p0, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamHeight:I

    return p0
.end method

.method public static final synthetic access$getStreamWidth$p(Lcom/shilapi/xcertplay/GenericClusterPresentation;)I
    .locals 0

    .line 204
    iget p0, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamWidth:I

    return p0
.end method


# virtual methods
.method public final getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 218
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 219
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 220
    new-instance v0, Lcom/shilapi/xcertplay/AspectFitFrame;

    invoke-static {p0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamWidth:I

    iget v3, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/shilapi/xcertplay/AspectFitFrame;-><init>(Landroid/content/Context;II)V

    .line 221
    new-instance v1, Landroid/view/SurfaceView;

    invoke-static {p0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    new-instance v3, Lcom/shilapi/xcertplay/GenericClusterPresentation$onCreate$1;

    invoke-direct {v3, p0}, Lcom/shilapi/xcertplay/GenericClusterPresentation$onCreate$1;-><init>(Lcom/shilapi/xcertplay/GenericClusterPresentation;)V

    check-cast v3, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 237
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v3}, Lcom/shilapi/xcertplay/AspectFitFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iput-object v1, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->surfaceView:Landroid/view/SurfaceView;

    .line 239
    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    sget-object v0, Lcom/shilapi/xcertplay/ClusterMapPresentation;->Companion:Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Landroid/view/Display;

    move-result-object v1

    const-string v3, "getDisplay(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shilapi/xcertplay/ClusterMapPresentation$Companion;->sizeOf(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    .line 241
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 242
    new-instance v3, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 243
    iget-object v5, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->waitingText:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/shilapi/xcertplay/host/R$string;->cluster_waiting_for_map:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v1, v1

    const v5, 0x3d6147ae    # 0.055f

    mul-float v1, v1, v5

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v6, 0x42400000    # 48.0f

    .line 246
    invoke-static {v1, v5, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 247
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x3

    .line 248
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 249
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v5, 0x3d75c28f    # 0.06f

    mul-float v1, v1, v5

    float-to-int v1, v1

    .line 250
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 242
    iput-object v3, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->waitingLabel:Landroid/widget/TextView;

    .line 252
    check-cast v3, Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, p1, v0}, Lcom/shilapi/xcertplay/E01MapCard;->install(Landroid/app/Presentation;Landroid/widget/FrameLayout;Landroid/graphics/Point;)V

    invoke-static {p0, p1, v0}, Lcom/shilapi/xcertplay/E01ClusterIntro;->install(Landroid/app/Presentation;Landroid/widget/FrameLayout;Landroid/graphics/Point;)V

    .line 253
    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CrashRecorder$$ExternalSyntheticApiModelOutline5;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;Landroid/view/View;)V

    .line 254
    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 255
    iget v2, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamWidth:I

    iget v3, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamHeight:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "generic cluster presentation display="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " stream="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    const-string v0, "DiPlay-Cluster"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Presentation;->onStart()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/E01ClusterMode;->setVisible(Landroid/app/Presentation;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-static {p0}, Lcom/shilapi/xcertplay/E01ClusterIntro;->stopped(Landroid/app/Presentation;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/E01ClusterMode;->setActive(Landroid/app/Presentation;Z)V

    invoke-static {p0, v0}, Lcom/shilapi/xcertplay/E01ClusterMode;->setVisible(Landroid/app/Presentation;Z)V

    invoke-super {p0}, Landroid/app/Presentation;->onStop()V

    return-void
.end method

.method public final setStreamActive(Z)V
    .locals 1

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/E01ClusterMode;->setActive(Landroid/app/Presentation;Z)V

    .line 260
    iget-object v0, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->waitingLabel:Landroid/widget/TextView;

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

.method public final waitingShown()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation;->waitingLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
