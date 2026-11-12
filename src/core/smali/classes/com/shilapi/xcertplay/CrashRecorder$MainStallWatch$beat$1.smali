.class public final Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;
.super Ljava/lang/Object;
.source "CrashRecorder.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1",
        "Ljava/lang/Runnable;",
        "run",
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
.field final synthetic this$0:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;->this$0:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;->this$0:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    # getter for: Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->access$getLock$p(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;->this$0:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    monitor-enter v0

    .line 183
    :try_start_0
    # getter for: Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->foreground:Z
    invoke-static {v1}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->access$getForeground$p(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    .line 184
    :cond_0
    :try_start_1
    # invokes: Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->markBeatLocked()V
    invoke-static {v1}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->access$markBeatLocked(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)V

    .line 185
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit v0

    .line 186
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;->this$0:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;

    # getter for: Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->post:Lkotlin/jvm/functions/Function2;
    invoke-static {v0}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->access$getPost$p(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    .line 182
    monitor-exit v0

    throw v1
.end method
