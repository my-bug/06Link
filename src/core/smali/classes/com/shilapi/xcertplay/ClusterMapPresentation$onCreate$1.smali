.class public final Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;
.super Ljava/lang/Object;
.source "ClusterMapPresentation.kt"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/ClusterMapPresentation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/shilapi/xcertplay/ClusterMapPresentation$onCreate$1",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "onSurfaceTextureAvailable",
        "",
        "texture",
        "Landroid/graphics/SurfaceTexture;",
        "width",
        "",
        "height",
        "onSurfaceTextureSizeChanged",
        "onSurfaceTextureUpdated",
        "onSurfaceTextureDestroyed",
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
.field final synthetic $plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

.field final synthetic $textureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/shilapi/xcertplay/ClusterMapPresentation;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/ClusterMapPresentation;Landroid/view/TextureView;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/ClusterMapPresentation;

    iput-object p2, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->$textureView:Landroid/view/TextureView;

    iput-object p3, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->$plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string/jumbo p2, "texture"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x780

    const/16 p3, 0x2d0

    .line 76
    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/SurfaceTexture;II)V

    .line 77
    iget-object p2, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->$textureView:Landroid/view/TextureView;

    iget-object p3, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->$plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    # invokes: Lcom/shilapi/xcertplay/ClusterMapPresentation;->onCreate$transform(Landroid/view/TextureView;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;)V
    invoke-static {p2, p3}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->access$onCreate$transform(Landroid/view/TextureView;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;)V

    .line 78
    iget-object p2, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/ClusterMapPresentation;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/ClusterMapPresentation;

    # getter for: Lcom/shilapi/xcertplay/ClusterMapPresentation;->onSurface:Lkotlin/jvm/functions/Function1;
    invoke-static {p1}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->access$getOnSurface$p(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->access$setOutputSurface$p(Lcom/shilapi/xcertplay/ClusterMapPresentation;Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string/jumbo v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/ClusterMapPresentation;

    # getter for: Lcom/shilapi/xcertplay/ClusterMapPresentation;->onSurface:Lkotlin/jvm/functions/Function1;
    invoke-static {p1}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->access$getOnSurface$p(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/ClusterMapPresentation;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->getOutputSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/ClusterMapPresentation;

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->access$setOutputSurface$p(Lcom/shilapi/xcertplay/ClusterMapPresentation;Landroid/view/Surface;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string/jumbo p2, "texture"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->$textureView:Landroid/view/TextureView;

    iget-object p2, p0, Lcom/shilapi/xcertplay/ClusterMapPresentation$onCreate$1;->$plan:Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;

    # invokes: Lcom/shilapi/xcertplay/ClusterMapPresentation;->onCreate$transform(Landroid/view/TextureView;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;)V
    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->access$onCreate$transform(Landroid/view/TextureView;Lcom/shilapi/xcertplay/DiLink51ClusterLayout$Plan;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string/jumbo v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
