.class public final Lcom/shilapi/xcertplay/GenericClusterPresentation$onCreate$1;
.super Ljava/lang/Object;
.source "GenericClusterDisplay.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/GenericClusterPresentation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/shilapi/xcertplay/GenericClusterPresentation$onCreate$1",
        "Landroid/view/SurfaceHolder$Callback;",
        "surfaceCreated",
        "",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "surfaceChanged",
        "format",
        "",
        "width",
        "height",
        "surfaceDestroyed",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/GenericClusterPresentation;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/GenericClusterPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    # getter for: Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamWidth:I
    invoke-static {p1}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->access$getStreamWidth$p(Lcom/shilapi/xcertplay/GenericClusterPresentation;)I

    move-result p1

    iget-object p2, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    # getter for: Lcom/shilapi/xcertplay/GenericClusterPresentation;->streamHeight:I
    invoke-static {p2}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->access$getStreamHeight$p(Lcom/shilapi/xcertplay/GenericClusterPresentation;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generic cluster surface "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " stream="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DiPlay-Cluster"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    const-string v0, "DiPlay-Cluster"

    const-string v1, "generic cluster surface created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    # getter for: Lcom/shilapi/xcertplay/GenericClusterPresentation;->onSurface:Lkotlin/jvm/functions/Function1;
    invoke-static {v0}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->access$getOnSurface$p(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    const-string p1, "DiPlay-Cluster"

    const-string v0, "generic cluster surface destroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p1, p0, Lcom/shilapi/xcertplay/GenericClusterPresentation$onCreate$1;->this$0:Lcom/shilapi/xcertplay/GenericClusterPresentation;

    # getter for: Lcom/shilapi/xcertplay/GenericClusterPresentation;->onSurface:Lkotlin/jvm/functions/Function1;
    invoke-static {p1}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->access$getOnSurface$p(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
