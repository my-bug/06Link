.class public final Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;
.super Ljava/lang/Object;
.source "CrashRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/CrashRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainStallWatch"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrashRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashRecorder.kt\ncom/shilapi/xcertplay/CrashRecorder$MainStallWatch\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,285:1\n1#2:286\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0008\u000c*\u0001\u0019\u0008\u0000\u0018\u00002\u00020\u0001B[\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010\u001d\u001a\u00020\tJ\u0006\u0010\u001e\u001a\u00020\tJ\u0006\u0010\u001f\u001a\u00020\tJ\r\u0010 \u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010!J\u000f\u0010\"\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0002\u0010!J\u0008\u0010#\u001a\u00020\tH\u0002R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;",
        "",
        "uptime",
        "Lkotlin/Function0;",
        "",
        "elapsed",
        "post",
        "Lkotlin/Function2;",
        "Ljava/lang/Runnable;",
        "",
        "cancel",
        "Lkotlin/Function1;",
        "thresholdMs",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;J)V",
        "lock",
        "Ljava/lang/Object;",
        "foreground",
        "",
        "lastBeatUptime",
        "lastBeatElapsed",
        "lastCheckUptime",
        "lastCheckElapsed",
        "lastWrittenUptime",
        "beat",
        "com/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1",
        "Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;",
        "isBeating",
        "()Z",
        "onForeground",
        "onBackground",
        "awaitForeground",
        "check",
        "()Ljava/lang/Long;",
        "checkLocked",
        "markBeatLocked",
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
.field private final beat:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;

.field private final cancel:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Runnable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final elapsed:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private foreground:Z

.field private lastBeatElapsed:J

.field private lastBeatUptime:J

.field private lastCheckElapsed:J

.field private lastCheckUptime:J

.field private lastWrittenUptime:J

.field private final lock:Ljava/lang/Object;

.field private final post:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final thresholdMs:J

.field private final uptime:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Runnable;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Runnable;",
            "Lkotlin/Unit;",
            ">;J)V"
        }
    .end annotation

    const-string/jumbo v0, "uptime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elapsed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "post"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->uptime:Lkotlin/jvm/functions/Function0;

    .line 167
    iput-object p2, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->elapsed:Lkotlin/jvm/functions/Function0;

    .line 168
    iput-object p3, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->post:Lkotlin/jvm/functions/Function2;

    .line 169
    iput-object p4, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->cancel:Lkotlin/jvm/functions/Function1;

    .line 170
    iput-wide p5, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->thresholdMs:J

    .line 172
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;

    const-wide/high16 p1, -0x4000000000000000L    # -2.0

    .line 178
    iput-wide p1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastWrittenUptime:J

    .line 180
    new-instance p1, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;-><init>(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->beat:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const-wide/16 p5, 0x7d0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 165
    invoke-direct/range {v0 .. v6}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;J)V

    return-void
.end method

.method public static final synthetic access$getForeground$p(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->foreground:Z

    return p0
.end method

.method public static final synthetic access$getLock$p(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)Ljava/lang/Object;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getPost$p(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->post:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$markBeatLocked(Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->markBeatLocked()V

    return-void
.end method

.method private final checkLocked()Ljava/lang/Long;
    .locals 13

    .line 216
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->foreground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->uptime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 218
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->elapsed:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 220
    iget-wide v6, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastCheckUptime:J

    iget-wide v8, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastBeatUptime:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long v6, v2, v6

    .line 221
    iget-wide v8, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastCheckElapsed:J

    iget-wide v10, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastBeatElapsed:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sub-long v8, v4, v8

    .line 222
    iput-wide v2, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastCheckUptime:J

    .line 223
    iput-wide v4, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastCheckElapsed:J

    sub-long/2addr v8, v6

    const-wide/16 v4, 0x3e8

    cmp-long v0, v8, v4

    if-lez v0, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->markBeatLocked()V

    return-object v1

    .line 228
    :cond_1
    iget-wide v4, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastBeatUptime:J

    sub-long v7, v2, v4

    .line 229
    sget-object v6, Lcom/shilapi/xcertplay/CrashRecorder;->INSTANCE:Lcom/shilapi/xcertplay/CrashRecorder;

    iget-wide v4, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastWrittenUptime:J

    sub-long v9, v2, v4

    iget-wide v11, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->thresholdMs:J

    invoke-virtual/range {v6 .. v12}, Lcom/shilapi/xcertplay/CrashRecorder;->shouldRecordStall$common_release(JJJ)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 230
    :cond_2
    iput-wide v2, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastWrittenUptime:J

    .line 231
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private final markBeatLocked()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->uptime:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastBeatUptime:J

    .line 236
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->elapsed:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lastBeatElapsed:J

    return-void
.end method


# virtual methods
.method public final awaitForeground()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->foreground:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final check()Ljava/lang/Long;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->checkLocked()Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isBeating()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->foreground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onBackground()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->foreground:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 204
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->cancel:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->beat:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    .line 203
    monitor-exit v0

    throw v1
.end method

.method public final onForeground()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->foreground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 195
    :try_start_1
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->foreground:Z

    .line 196
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->markBeatLocked()V

    .line 197
    iget-object v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 198
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    monitor-exit v0

    .line 199
    iget-object v0, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->post:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch;->beat:Lcom/shilapi/xcertplay/CrashRecorder$MainStallWatch$beat$1;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    .line 193
    monitor-exit v0

    throw v1
.end method
