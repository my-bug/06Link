.class public final Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;
.super Ljava/lang/Object;
.source "CarPlayHostActivity.kt"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayHostActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/shilapi/xcertplay/CarPlayHostActivity$textureListener$1",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "onSurfaceTextureAvailable",
        "",
        "texture",
        "Landroid/graphics/SurfaceTexture;",
        "width",
        "",
        "height",
        "onSurfaceTextureSizeChanged",
        "onSurfaceTextureDestroyed",
        "",
        "onSurfaceTextureUpdated",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string/jumbo v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->currentSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getCurrentSurface$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->currentSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getCurrentSurfaceTexture$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 452
    :cond_0
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 454
    :cond_1
    invoke-static {v2, v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setCurrentSurface$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Landroid/view/Surface;)V

    .line 455
    invoke-static {v2, p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setCurrentSurfaceTexture$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Landroid/graphics/SurfaceTexture;)V

    .line 458
    :goto_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    if-ne v0, v1, :cond_2

    const-string v0, "Texture surface reused"

    goto :goto_1

    :cond_2
    const-string v0, "Texture surface created"

    :goto_1
    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    .line 459
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/E01SmoothVideo;->registerTexture(Landroid/app/Activity;Landroid/view/Surface;)V

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->attachSurface(Landroid/view/Surface;)V
    invoke-static {p1, v1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$attachSurface(Lcom/shilapi/xcertplay/CarPlayHostActivity;Landroid/view/Surface;)V

    .line 460
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->scheduleDisplaySize(II)V
    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$scheduleDisplaySize(Lcom/shilapi/xcertplay/CarPlayHostActivity;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    const-string/jumbo v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->currentSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getCurrentSurfaceTexture$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->currentSurface:Landroid/view/Surface;
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getCurrentSurface$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    .line 470
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getSink$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x6e

    invoke-virtual {v2, v3, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->clearSurface(ILandroid/view/Surface;)V

    .line 471
    :cond_1
    # getter for: Lcom/shilapi/xcertplay/CarPlayHostActivity;->sink:Lcom/shilapi/xcertplay/media/AndroidMediaSink;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$getSink$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;)Lcom/shilapi/xcertplay/media/AndroidMediaSink;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, p1}, Lcom/shilapi/xcertplay/media/AndroidMediaSink;->clearSurface(ILandroid/view/Surface;)V

    .line 472
    :cond_2
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 474
    :cond_3
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setCurrentSurface$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Landroid/view/Surface;)V

    .line 475
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$setCurrentSurfaceTexture$p(Lcom/shilapi/xcertplay/CarPlayHostActivity;Landroid/graphics/SurfaceTexture;)V

    .line 476
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    const-string v0, "Texture surface destroyed"

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->appendLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$appendLog(Lcom/shilapi/xcertplay/CarPlayHostActivity;Ljava/lang/String;)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string/jumbo v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayHostActivity$textureListener$1;->this$0:Lcom/shilapi/xcertplay/CarPlayHostActivity;

    # invokes: Lcom/shilapi/xcertplay/CarPlayHostActivity;->scheduleDisplaySize(II)V
    invoke-static {p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->access$scheduleDisplaySize(Lcom/shilapi/xcertplay/CarPlayHostActivity;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string/jumbo v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
