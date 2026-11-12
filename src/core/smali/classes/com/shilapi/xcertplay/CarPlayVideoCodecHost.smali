.class public final Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;
.super Ljava/lang/Object;
.source "CarPlayVideoCodecHost.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayVideoCodecHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayVideoCodecHost.kt\ncom/shilapi/xcertplay/CarPlayVideoCodecHost\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,324:1\n1#2:325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 B2\u00020\u0001:\u0001BB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0016J\u0008\u0010$\u001a\u00020%H\u0016J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020\u000eH\u0016J\u0010\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u0007H\u0016J\u0010\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000eH\u0016J\u0010\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u000eH\u0016J\u000f\u0010/\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0002\u00100J\u0008\u00101\u001a\u00020\u000fH\u0016J\u0008\u00102\u001a\u00020\u000fH\u0002J\u0008\u00103\u001a\u00020\u000fH\u0002J\u0010\u00104\u001a\u00020\u000f2\u0006\u0010\'\u001a\u00020\u001aH\u0002J\u0018\u00105\u001a\u00020\u00072\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0002J$\u0010:\u001a\u00020\u000f2\u0008\u00108\u001a\u0004\u0018\u0001092\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010=\u001a\u00020>H\u0002J\u0018\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020\u001aH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;",
        "Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;",
        "<init>",
        "()V",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "surfaceReady",
        "",
        "worker",
        "Landroid/os/HandlerThread;",
        "handler",
        "Landroid/os/Handler;",
        "onError",
        "Lkotlin/Function1;",
        "",
        "",
        "wantPlaying",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "prepared",
        "stopFlag",
        "seekToUs",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "positionUs",
        "durationUs",
        "loadedUrl",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "",
        "pendingUrl",
        "startAtUs",
        "errorCode",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "attach",
        "activity",
        "Landroid/app/Activity;",
        "container",
        "Landroid/widget/FrameLayout;",
        "state",
        "Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;",
        "load",
        "url",
        "startMillis",
        "applyRate",
        "playing",
        "skip",
        "deltaMillis",
        "applySeek",
        "targetMillis",
        "currentPositionMillis",
        "()Ljava/lang/Integer;",
        "release",
        "maybeStartPending",
        "stopPlaybackLoop",
        "runPipeline",
        "feed",
        "extractor",
        "Landroid/media/MediaExtractor;",
        "codec",
        "Landroid/media/MediaCodec;",
        "drainAudio",
        "track",
        "Landroid/media/AudioTrack;",
        "info",
        "Landroid/media/MediaCodec$BufferInfo;",
        "fail",
        "code",
        "detail",
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
.field private static final Companion:Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$Companion;

.field public static final TAG:Ljava/lang/String; = "DiPlay-Video"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final durationUs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final errorCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private handler:Landroid/os/Handler;

.field private final loadedUrl:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingUrl:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final positionUs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final seekToUs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final startAtUs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private surfaceReady:Z

.field private surfaceView:Landroid/view/SurfaceView;

.field private final wantPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private worker:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$7R8z2L9G9PuPfIooc4Ra8Wq2gRI(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->maybeStartPending$lambda$1(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSdlXhpjWmdt7sSk0Otm4SJotkc(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->fail$lambda$18(Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->Companion:Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->wantPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->seekToUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->positionUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->durationUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->loadedUrl:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->pendingUrl:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->startAtUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->errorCode:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final synthetic access$maybeStartPending(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->maybeStartPending()V

    return-void
.end method

.method public static final synthetic access$setSurfaceReady$p(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->surfaceReady:Z

    return-void
.end method

.method public static final synthetic access$stopPlaybackLoop(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->stopPlaybackLoop()V

    return-void
.end method

.method private final drainAudio(Landroid/media/MediaCodec;Landroid/media/AudioTrack;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 287
    invoke-static {p1, p3, v0, v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    invoke-static {p3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 290
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    invoke-static {p1, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_2
    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 293
    invoke-static {p3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v3

    new-array v4, v3, [B

    .line 294
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 295
    invoke-static {p3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec$BufferInfo;)I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 296
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    invoke-virtual {p2, v4, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 301
    :cond_3
    invoke-static {p1, v0, v2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final fail(ILjava/lang/String;)V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bundled player fail code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DiPlay-Video"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->errorCode:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 307
    iget-object p2, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->onError:Lkotlin/jvm/functions/Function1;

    .line 308
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$$ExternalSyntheticLambda34;

    invoke-direct {v1, p2, p1}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$$ExternalSyntheticLambda34;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final fail$lambda$18(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final feed(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)Z
    .locals 10

    const-wide/16 v0, 0x2710

    .line 269
    invoke-static {p2, v0, v1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;J)I

    move-result v3

    const/4 v0, 0x0

    if-gez v3, :cond_0

    return v0

    .line 271
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    invoke-static {p2, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 272
    :cond_1
    invoke-static {p2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-object v1, v1, v3

    :goto_0
    if-nez v1, :cond_2

    return v0

    .line 274
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 275
    invoke-static {p1, v1, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-gez v5, :cond_3

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    .line 277
    invoke-static/range {v2 .. v8}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IIIJI)V

    const/4 p1, 0x1

    return p1

    :cond_3
    move-object v2, p2

    .line 280
    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IIIJI)V

    .line 281
    invoke-static {p1}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)Z

    return v0
.end method

.method private final maybeStartPending()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->pendingUrl:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->surfaceReady:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->handler:Landroid/os/Handler;

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->stopPlaybackLoop()V

    .line 125
    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->errorCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 127
    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    iget-object v2, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->wantPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v3, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {v3}, Lcom/shilapi/xcertplay/CarPlayVideo;->getPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    new-instance v2, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, v0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$$ExternalSyntheticLambda33;-><init>(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final maybeStartPending$lambda$1(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->runPipeline(Ljava/lang/String;)V

    return-void
.end method

.method private final runPipeline(Ljava/lang/String;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 138
    const-string v0, "channel-count"

    const-string v3, "sample-rate"

    const-string v4, "mime"

    const-string v5, "durationUs"

    const-string v6, "getTrackFormat(...)"

    const-string v7, "DiPlay-Video"

    .line 0
    const-string v8, "audio path skipped: "

    .line 141
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v11, 0x0

    .line 143
    :try_start_0
    iget-object v13, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->surfaceView:Landroid/view/SurfaceView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_28

    if-eqz v13, :cond_0

    :try_start_1
    invoke-virtual {v13}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v2, v9

    :goto_0
    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x0

    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_51

    :catch_0
    move-exception v0

    move-object v5, v7

    move-object v2, v9

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_3
    const/4 v15, 0x0

    :goto_4
    const/16 v16, 0x0

    goto/16 :goto_40

    :cond_0
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_23

    .line 144
    :try_start_2
    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v14

    if-nez v14, :cond_1

    goto/16 :goto_34

    .line 148
    :cond_1
    new-instance v14, Landroid/media/MediaExtractor;

    invoke-direct {v14}, Landroid/media/MediaExtractor;-><init>()V

    invoke-static {v14, v2}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;Ljava/lang/String;)V

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1f

    .line 149
    :try_start_3
    sget-object v15, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->Companion:Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$Companion;

    const-string/jumbo v10, "video/"

    invoke-virtual {v15, v14, v10}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$Companion;->indexOf(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v10

    const/16 v16, 0x0

    .line 150
    const-string v12, "audio/"

    invoke-virtual {v15, v14, v12}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$Companion;->indexOf(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1e

    const/16 v15, -0x327f

    if-gez v10, :cond_4

    .line 152
    :try_start_4
    const-string v0, "no-video-track"

    invoke-direct {v1, v15, v0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->fail(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 260
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_7
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_9
    :try_start_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_a

    :cond_2
    move-object/from16 v0, v16

    :goto_a
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    :try_start_a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_c

    :cond_3
    move-object/from16 v12, v16

    :goto_c
    invoke-static {v12}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_d
    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    invoke-static {v14}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_e

    :catchall_7
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_e
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_8
    move-exception v0

    move-object v3, v0

    move-object v2, v9

    move-object/from16 v7, v16

    move-object v15, v7

    goto/16 :goto_51

    :catch_1
    move-exception v0

    move-object v5, v7

    :goto_f
    move-object v2, v9

    move-object/from16 v7, v16

    move-object v15, v7

    goto/16 :goto_40

    .line 155
    :cond_4
    :try_start_c
    invoke-static {v14, v10}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_1e

    if-ltz v12, :cond_5

    .line 156
    :try_start_d
    invoke-static {v14, v12}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 157
    :cond_5
    :try_start_e
    invoke-static {v14, v10}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;I)Landroid/media/MediaFormat;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v15, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->durationUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v11, v5}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)Z

    move-result v18
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_1e

    const-wide/16 v19, 0x0

    if-eqz v18, :cond_6

    :try_start_f
    invoke-static {v11, v5}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)J

    move-result-wide v21
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move-object v5, v7

    move-object/from16 v18, v8

    move-wide/from16 v7, v21

    goto :goto_10

    :cond_6
    move-object v5, v7

    move-object/from16 v18, v8

    move-wide/from16 v7, v19

    :goto_10
    :try_start_10
    invoke-virtual {v15, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 159
    invoke-static {v11, v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_1e

    if-nez v7, :cond_9

    :try_start_11
    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    .line 160
    const-string v0, "no-mime"

    const/16 v2, -0x327f

    invoke-direct {v1, v2, v0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->fail(ILjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 260
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_11

    :cond_7
    move-object/from16 v0, v16

    :goto_11
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_12

    :cond_8
    move-object/from16 v12, v16

    :goto_12
    invoke-static {v12}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v14}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_2
    move-exception v0

    goto/16 :goto_f

    .line 163
    :cond_9
    :try_start_12
    invoke-static {v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    move-object/from16 v15, v16

    const/4 v8, 0x0

    .line 164
    invoke-static {v7, v11, v13, v15, v8}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 165
    invoke-static {v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/media/MediaCodec;)V

    .line 166
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_1e

    const/4 v11, 0x2

    if-ltz v12, :cond_d

    .line 168
    :try_start_13
    invoke-static {v14, v12}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;I)Landroid/media/MediaFormat;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {v13, v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    if-eqz v4, :cond_d

    .line 171
    :try_start_14
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v6, v1

    check-cast v6, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    .line 172
    invoke-static {v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 173
    invoke-static {v4, v13, v15, v15, v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 174
    invoke-static {v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/media/MediaCodec;)V

    .line 172
    const-string v6, "also(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 177
    :try_start_15
    invoke-static {v13, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v13, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v3

    goto :goto_13

    :cond_a
    const v3, 0xac44

    .line 178
    :goto_13
    invoke-static {v13, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v13, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    :cond_b
    const/4 v0, 0x2

    :goto_14
    if-lt v0, v11, :cond_c

    const/16 v0, 0xc

    goto :goto_15

    :cond_c
    const/4 v0, 0x4

    .line 181
    :goto_15
    invoke-static {v3, v0, v11}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    .line 183
    new-instance v21, Landroid/media/AudioTrack;

    const/16 v13, 0x1000

    .line 188
    invoke-static {v6, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v26

    const/16 v27, 0x1

    const/16 v22, 0x3

    const/16 v25, 0x2

    move/from16 v24, v0

    move/from16 v23, v3

    .line 183
    invoke-direct/range {v21 .. v27}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    move-object/from16 v0, v21

    .line 190
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 183
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 191
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 171
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    goto :goto_17

    :catchall_9
    move-exception v0

    goto :goto_16

    :catchall_a
    move-exception v0

    const/4 v4, 0x0

    :goto_16
    :try_start_16
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    :goto_17
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    goto :goto_18

    :catchall_b
    move-exception v0

    move-object v3, v0

    move-object v15, v4

    move-object v2, v9

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v15, v4

    move-object v2, v9

    goto/16 :goto_4

    :catchall_c
    move-exception v0

    move-object v3, v0

    move-object v2, v9

    goto/16 :goto_1

    :catch_4
    move-exception v0

    move-object v2, v9

    goto/16 :goto_3

    :cond_d
    const/4 v4, 0x0

    .line 194
    :cond_e
    :goto_18
    :try_start_17
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->loadedUrl:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 195
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->pendingUrl:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v15, 0x0

    invoke-static {v0, v2, v15}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 197
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->startAtUs:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_1d

    move-object v3, v9

    const/4 v6, 0x4

    :try_start_18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_1c

    cmp-long v0, v8, v19

    if-lez v0, :cond_f

    .line 199
    :try_start_19
    invoke-static {v14, v8, v9, v11}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;JI)V

    .line 200
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->positionUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    goto :goto_19

    :catchall_d
    move-exception v0

    move-object v2, v3

    move-object v15, v4

    const/16 v16, 0x0

    goto/16 :goto_50

    .line 202
    :cond_f
    :goto_19
    :try_start_1a
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1c

    move-object/from16 p1, v3

    const-wide/16 v2, -0x1

    move-wide/from16 v17, v2

    move-wide/from16 v21, v19

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 207
    :goto_1a
    :try_start_1b
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez v13, :cond_1c

    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->errorCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1c

    .line 208
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->seekToUs:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    move-object/from16 v23, v7

    const/16 v24, 0x4

    :try_start_1c
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v6
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    cmp-long v0, v6, v19

    if-ltz v0, :cond_11

    .line 210
    :try_start_1d
    invoke-static {v14, v6, v7, v11}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;JI)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    .line 211
    :try_start_1e
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    invoke-static/range {v23 .. v23}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    goto :goto_1b

    :catchall_e
    move-exception v0

    :try_start_1f
    sget-object v17, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    .line 212
    :goto_1b
    :try_start_20
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    if-eqz v4, :cond_10

    invoke-static {v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1c

    :cond_10
    const/4 v0, 0x0

    :goto_1c
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    goto :goto_1d

    :catchall_f
    move-exception v0

    :try_start_21
    sget-object v17, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :goto_1d
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->positionUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    move-wide/from16 v17, v2

    goto :goto_1e

    :catchall_10
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object v15, v4

    move-object/from16 v7, v23

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v2, p1

    move-object v15, v4

    move-object/from16 v7, v23

    goto/16 :goto_4

    .line 216
    :cond_11
    :goto_1e
    :try_start_22
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->wantPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_8
    .catchall {:try_start_22 .. :try_end_22} :catchall_13

    if-nez v0, :cond_12

    const-wide/16 v6, 0x28

    .line 217
    :try_start_23
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_5
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    move-object/from16 v7, v23

    const/4 v6, 0x4

    goto/16 :goto_1a

    :cond_12
    const/4 v0, -0x1

    if-nez v15, :cond_17

    .line 221
    :try_start_24
    invoke-static {v14}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)I

    move-result v6

    if-ne v6, v10, :cond_13

    .line 222
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_6
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    move-object/from16 v7, v23

    :try_start_25
    invoke-direct {v1, v14, v7}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->feed(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)Z

    move-result v15

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1f

    :cond_13
    move-object/from16 v7, v23

    if-ne v6, v12, :cond_15

    if-eqz v4, :cond_14

    .line 225
    invoke-direct {v1, v14, v4}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->feed(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)Z

    move-result v15

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1f

    :cond_14
    invoke-static {v14}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1f

    :cond_15
    if-ne v6, v0, :cond_16

    .line 227
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v15, 0x1

    goto :goto_1f

    .line 228
    :cond_16
    invoke-static {v14}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1f

    :catchall_11
    move-exception v0

    move-object/from16 v7, v23

    goto/16 :goto_2f

    :catch_6
    move-exception v0

    move-object/from16 v7, v23

    goto/16 :goto_30

    :cond_17
    move-object/from16 v7, v23

    .line 231
    :goto_1f
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v2, 0x2710

    invoke-static {v7, v8, v2, v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    if-eq v2, v0, :cond_1b

    const/4 v0, -0x2

    if-eq v2, v0, :cond_1b

    const/4 v0, -0x3

    if-eq v2, v0, :cond_1b

    if-ltz v2, :cond_1b

    .line 237
    invoke-static {v8}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    const/4 v6, 0x0

    .line 238
    invoke-static {v7, v2, v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IZ)V

    move-object/from16 v2, p1

    move v3, v10

    move/from16 v23, v12

    const/4 v6, 0x1

    const/4 v13, 0x1

    goto :goto_22

    :cond_18
    move v3, v10

    .line 241
    invoke-static {v8}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v9

    .line 242
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->positionUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    cmp-long v0, v17, v19

    if-gez v0, :cond_19

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    move-wide/from16 v17, v9

    :cond_19
    sub-long v9, v9, v17

    const-wide/16 v27, 0x3e8

    .line 247
    div-long v9, v9, v27

    add-long v9, v21, v9

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v27

    sub-long v9, v9, v27

    const-wide/16 v27, 0x2

    cmp-long v0, v9, v27

    if-lez v0, :cond_1a

    move/from16 v23, v12

    const-wide/16 v11, 0x32

    .line 249
    invoke-static {v9, v10, v11, v12}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_20

    :cond_1a
    move/from16 v23, v12

    :goto_20
    const/4 v6, 0x1

    .line 250
    invoke-static {v7, v2, v6}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;IZ)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_9
    .catchall {:try_start_25 .. :try_end_25} :catchall_1b

    goto :goto_21

    :cond_1b
    move v3, v10

    move/from16 v23, v12

    const/4 v6, 0x1

    :goto_21
    move-object/from16 v2, p1

    .line 254
    :goto_22
    :try_start_26
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    invoke-direct {v1, v4, v0, v8}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->drainAudio(Landroid/media/MediaCodec;Landroid/media/AudioTrack;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_7
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    move-object/from16 p1, v2

    move v10, v3

    move/from16 v12, v23

    const-wide/16 v2, -0x1

    const/4 v6, 0x4

    const/4 v11, 0x2

    goto/16 :goto_1a

    :catchall_12
    move-exception v0

    goto/16 :goto_31

    :catch_7
    move-exception v0

    goto/16 :goto_32

    :catchall_13
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v7, v23

    goto/16 :goto_31

    :catch_8
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v7, v23

    goto/16 :goto_32

    :cond_1c
    move-object/from16 v2, p1

    .line 260
    :try_start_27
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    if-eqz v7, :cond_1d

    invoke-static {v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_23

    :cond_1d
    const/4 v0, 0x0

    :goto_23
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    goto :goto_24

    :catchall_14
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_24
    :try_start_28
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    if-eqz v7, :cond_1e

    invoke-static {v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_25

    :cond_1e
    const/4 v0, 0x0

    :goto_25
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_15

    goto :goto_26

    :catchall_15
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_26
    :try_start_29
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    if-eqz v4, :cond_1f

    invoke-static {v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_27

    :cond_1f
    const/4 v0, 0x0

    :goto_27
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_16

    goto :goto_28

    :catchall_16
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    :try_start_2a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    if-eqz v4, :cond_20

    invoke-static {v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_29

    :cond_20
    const/4 v0, 0x0

    :goto_29
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    goto :goto_2a

    :catchall_17
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_2a
    :try_start_2b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2b

    :cond_21
    const/4 v0, 0x0

    :goto_2b
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_18

    goto :goto_2c

    :catchall_18
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2c
    :try_start_2c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2d

    :cond_22
    const/4 v12, 0x0

    :goto_2d
    invoke-static {v12}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_19

    goto :goto_2e

    :catchall_19
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_2e
    :try_start_2d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    invoke-static {v14}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1a

    goto/16 :goto_4f

    :catchall_1a
    move-exception v0

    goto/16 :goto_4e

    :catchall_1b
    move-exception v0

    :goto_2f
    move-object/from16 v2, p1

    goto :goto_31

    :catch_9
    move-exception v0

    :goto_30
    move-object/from16 v2, p1

    goto :goto_32

    :catchall_1c
    move-exception v0

    move-object v2, v3

    goto :goto_31

    :catch_a
    move-exception v0

    move-object v2, v3

    goto :goto_32

    :catchall_1d
    move-exception v0

    move-object v2, v9

    :goto_31
    move-object v3, v0

    move-object v15, v4

    goto/16 :goto_2

    :catch_b
    move-exception v0

    move-object v2, v9

    :goto_32
    move-object v15, v4

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto :goto_33

    :catchall_1e
    move-exception v0

    move-object v2, v9

    move-object v3, v0

    const/4 v7, 0x0

    goto/16 :goto_1

    :catch_d
    move-exception v0

    move-object v5, v7

    :goto_33
    move-object v2, v9

    const/4 v7, 0x0

    goto/16 :goto_3

    :catchall_1f
    move-exception v0

    move-object v2, v9

    move-object v3, v0

    goto/16 :goto_0

    :cond_23
    :goto_34
    move-object v5, v7

    move-object v2, v9

    .line 145
    :try_start_2e
    const-string v0, "no-surface"

    const/16 v3, -0x326f

    invoke-direct {v1, v3, v0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->fail(ILjava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_27

    .line 260
    :try_start_2f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_20

    goto :goto_35

    :catchall_20
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_35
    :try_start_30
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_21

    goto :goto_36

    :catchall_21
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_36
    :try_start_31
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_22

    goto :goto_37

    :catchall_22
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_37
    :try_start_32
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_23

    goto :goto_38

    :catchall_23
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_38
    :try_start_33
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_39

    :cond_24
    const/4 v15, 0x0

    :goto_39
    invoke-static {v15}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_24

    goto :goto_3a

    :catchall_24
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    :try_start_34
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3b

    :cond_25
    const/4 v15, 0x0

    :goto_3b
    invoke-static {v15}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_25

    goto :goto_3c

    :catchall_25
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_3c
    :try_start_35
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_26

    goto :goto_3d

    :catchall_26
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_3d
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_27
    move-exception v0

    goto :goto_3e

    :catch_e
    move-exception v0

    goto :goto_3f

    :catchall_28
    move-exception v0

    move-object v2, v9

    :goto_3e
    const/16 v16, 0x0

    move-object v3, v0

    move-object/from16 v7, v16

    move-object v14, v7

    move-object v15, v14

    goto/16 :goto_51

    :catch_f
    move-exception v0

    move-object v5, v7

    move-object v2, v9

    :goto_3f
    const/16 v16, 0x0

    move-object/from16 v7, v16

    move-object v14, v7

    move-object v15, v14

    .line 257
    :goto_40
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pipeline failed: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getSimpleName(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, -0x326f

    invoke-direct {v1, v3, v0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->fail(ILjava/lang/String;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_30

    .line 260
    :try_start_37
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_41

    :cond_26
    move-object/from16 v0, v16

    :goto_41
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_29

    goto :goto_42

    :catchall_29
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    :try_start_38
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_43

    :cond_27
    move-object/from16 v0, v16

    :goto_43
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_2a

    goto :goto_44

    :catchall_2a
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_44
    :try_start_39
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v15}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_45

    :cond_28
    move-object/from16 v0, v16

    :goto_45
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_2b

    goto :goto_46

    :catchall_2b
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_46
    :try_start_3a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v15}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec;)V

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_47

    :cond_29
    move-object/from16 v15, v16

    :goto_47
    invoke-static {v15}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2c

    goto :goto_48

    :catchall_2c
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_48
    :try_start_3b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_49

    :cond_2a
    move-object/from16 v15, v16

    :goto_49
    invoke-static {v15}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2d

    goto :goto_4a

    :catchall_2d
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4a
    :try_start_3c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4b

    :cond_2b
    move-object/from16 v15, v16

    :goto_4b
    invoke-static {v15}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2e

    goto :goto_4c

    :catchall_2e
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_4c
    :try_start_3d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v14}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaExtractor;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)V

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4d

    :cond_2c
    move-object/from16 v12, v16

    :goto_4d
    invoke-static {v12}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2f

    goto :goto_4f

    :catchall_2f
    move-exception v0

    :goto_4e
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_4f
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_30
    move-exception v0

    :goto_50
    move-object v3, v0

    .line 260
    :goto_51
    :try_start_3e
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_52

    :cond_2d
    move-object/from16 v0, v16

    :goto_52
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_31

    goto :goto_53

    :catchall_31
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_53
    :try_start_3f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_54

    :cond_2e
    move-object/from16 v0, v16

    :goto_54
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_32

    goto :goto_55

    :catchall_32
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_55
    :try_start_40
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v15}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/MediaCodec;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_56

    :cond_2f
    move-object/from16 v0, v16

    :goto_56
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_33

    goto :goto_57

    :catchall_33
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_57
    :try_start_41
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v15}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/MediaCodec;)V

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_58

    :cond_30
    move-object/from16 v15, v16

    :goto_58
    invoke-static {v15}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_34

    goto :goto_59

    :catchall_34
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_59
    :try_start_42
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5a

    :cond_31
    move-object/from16 v15, v16

    :goto_5a
    invoke-static {v15}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_35

    goto :goto_5b

    :catchall_35
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5b
    :try_start_43
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5c

    :cond_32
    move-object/from16 v15, v16

    :goto_5c
    invoke-static {v15}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_36

    goto :goto_5d

    :catchall_36
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_5d
    :try_start_44
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v14}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaExtractor;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)V

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5e

    :cond_33
    move-object/from16 v12, v16

    :goto_5e
    invoke-static {v12}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_37

    goto :goto_5f

    :catchall_37
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_5f
    iget-object v0, v1, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_61

    :goto_60
    throw v3

    :goto_61
    goto :goto_60
.end method

.method private final stopPlaybackLoop()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->stopFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v0, 0x32

    .line 134
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method


# virtual methods
.method public applyRate(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->wantPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public applySeek(I)V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->seekToUs:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public attach(Landroid/app/Activity;Landroid/widget/FrameLayout;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/FrameLayout;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p3, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->onError:Lkotlin/jvm/functions/Function1;

    .line 52
    new-instance p3, Landroid/view/SurfaceView;

    check-cast p1, Landroid/content/Context;

    invoke-direct {p3, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p3, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->surfaceView:Landroid/view/SurfaceView;

    .line 55
    move-object p1, p3

    check-cast p1, Landroid/view/View;

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p2, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, -0x1000000

    .line 59
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 60
    invoke-virtual {p3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$attach$1;

    invoke-direct {p2, p0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost$attach$1;-><init>(Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;)V

    check-cast p2, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 71
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "06Link-park-video"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 72
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->worker:Landroid/os/HandlerThread;

    .line 73
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->handler:Landroid/os/Handler;

    return-void
.end method

.method public currentPositionMillis()Ljava/lang/Integer;
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->positionUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public load(Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->loadedUrl:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->pendingUrl:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->startAtUs:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 92
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->maybeStartPending()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->stopPlaybackLoop()V

    .line 113
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->worker:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->worker:Landroid/os/HandlerThread;

    .line 115
    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->handler:Landroid/os/Handler;

    .line 116
    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->surfaceView:Landroid/view/SurfaceView;

    .line 117
    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public skip(I)V
    .locals 10

    .line 100
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->positionUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long v4, v0, v2

    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->durationUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v8

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v0

    .line 101
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->seekToUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public state()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;
    .locals 15

    .line 77
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->durationUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v11, v0, v4

    .line 78
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->positionUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v0, v4

    .line 79
    new-instance v6, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    .line 80
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    .line 81
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->wantPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoCodecHost;->prepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_0
    move-wide v13, v11

    .line 79
    invoke-direct/range {v6 .. v14}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;-><init>(ZZDDD)V

    return-object v6
.end method
