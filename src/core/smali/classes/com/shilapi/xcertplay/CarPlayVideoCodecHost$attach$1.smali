.class public final Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$attach$1;
.super Ljava/lang/Object;
.source "CarPlayVideoCodecHost.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->attach(Landroid/app/Activity;Landroid/widget/FrameLayout;Lkotlin/jvm/functions/Function1;)V
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
        "com/shilapi/xcertplay/CarPlayVideoCodecHost$attach$1",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$attach$1;->this$0:Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$attach$1;->this$0:Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->access$setSurfaceReady$p(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;Z)V

    .line 63
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$attach$1;->this$0:Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    # invokes: Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->maybeStartPending()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->access$maybeStartPending(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$attach$1;->this$0:Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->access$setSurfaceReady$p(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;Z)V

    .line 68
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$attach$1;->this$0:Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    # invokes: Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->stopPlaybackLoop()V
    invoke-static {p1}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->access$stopPlaybackLoop(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;)V

    return-void
.end method
