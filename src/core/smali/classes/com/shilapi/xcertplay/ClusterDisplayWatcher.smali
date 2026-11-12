.class public final Lcom/shilapi/xcertplay/ClusterDisplayWatcher;
.super Ljava/lang/Object;
.source "GenericClusterDisplay.kt"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00126\u0010\u0004\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010\u0013\u001a\u00020\u000cJ\u0006\u0010\u0014\u001a\u00020\u000cJ\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002R>\u0010\u0004\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/ClusterDisplayWatcher;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;",
        "context",
        "Landroid/content/Context;",
        "onChange",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "event",
        "",
        "displayId",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V",
        "manager",
        "Landroid/hardware/display/DisplayManager;",
        "handler",
        "Landroid/os/Handler;",
        "start",
        "stop",
        "onDisplayAdded",
        "onDisplayRemoved",
        "onDisplayChanged",
        "post",
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
.field private final handler:Landroid/os/Handler;

.field private final manager:Landroid/hardware/display/DisplayManager;

.field private final onChange:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$hPOzO9fKspuJ00RoRstP8gksmCI(Lcom/shilapi/xcertplay/ClusterDisplayWatcher;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->post$lambda$0(Lcom/shilapi/xcertplay/ClusterDisplayWatcher;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->onChange:Lkotlin/jvm/functions/Function2;

    .line 282
    invoke-static {}, Landroidx/core/app/NavUtils$$ExternalSyntheticApiModelOutline0;->m$12()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shilapi/xcertplay/compat/Api19Kt;->systemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->manager:Landroid/hardware/display/DisplayManager;

    .line 283
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final post(Ljava/lang/String;I)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/shilapi/xcertplay/ClusterDisplayWatcher$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/shilapi/xcertplay/ClusterDisplayWatcher$$ExternalSyntheticLambda3;-><init>(Lcom/shilapi/xcertplay/ClusterDisplayWatcher;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final post$lambda$0(Lcom/shilapi/xcertplay/ClusterDisplayWatcher;Ljava/lang/String;I)V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->onChange:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1

    .line 292
    const-string v0, "added"

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->post(Ljava/lang/String;I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 295
    const-string v0, "changed"

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->post(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 293
    const-string v0, "removed"

    invoke-direct {p0, v0, p1}, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->post(Ljava/lang/String;I)V

    return-void
.end method

.method public final start()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->manager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager$DisplayListener;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->manager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager$DisplayListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/ClusterDisplayWatcher;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
