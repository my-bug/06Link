.class public final Lcom/shilapi/xcertplay/AudioChannelPreview;
.super Ljava/lang/Object;
.source "AudioChannelPreview.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/AudioChannelPreview$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioChannelPreview.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioChannelPreview.kt\ncom/shilapi/xcertplay/AudioChannelPreview\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0015J\u0008\u0010\u0019\u001a\u00020\u0005H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0002R\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/AudioChannelPreview;",
        "Ljava/io/Closeable;",
        "onUnavailable",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "mainHandler",
        "Landroid/os/Handler;",
        "worker",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "generation",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "activeTrack",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroid/media/AudioTrack;",
        "pending",
        "Ljava/util/concurrent/Future;",
        "closed",
        "",
        "play",
        "channel",
        "navigation",
        "close",
        "tone",
        "",
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
.field private static final Companion:Lcom/shilapi/xcertplay/AudioChannelPreview$Companion;

.field private static final SAMPLE_RATE:I = 0xbb80

.field private static final TAG:Ljava/lang/String; = "DiPlayAudioPreview"

.field private static final TONE_MILLIS:I = 0x258


# instance fields
.field private final activeTrack:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/media/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private volatile closed:Z

.field private final generation:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mainHandler:Landroid/os/Handler;

.field private final onUnavailable:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private pending:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$4Ugw56ckIXRPPZEdVXajGn4ymZc(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/AudioChannelPreview;->worker$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hu9Z8Y7AsQ6xQ_fVbJaiuYAWLk0(Lcom/shilapi/xcertplay/AudioChannelPreview;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/AudioChannelPreview;->play$lambda$10$lambda$7(Lcom/shilapi/xcertplay/AudioChannelPreview;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$y9v0szFLfA3R88L7QYXojvnFVII(Lcom/shilapi/xcertplay/AudioChannelPreview;IIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/AudioChannelPreview;->play$lambda$10(Lcom/shilapi/xcertplay/AudioChannelPreview;IIZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/AudioChannelPreview$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/AudioChannelPreview$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/AudioChannelPreview;->Companion:Lcom/shilapi/xcertplay/AudioChannelPreview$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onUnavailable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->onUnavailable:Lkotlin/jvm/functions/Function1;

    .line 21
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->mainHandler:Landroid/os/Handler;

    .line 22
    new-instance p1, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->worker:Ljava/util/concurrent/ExecutorService;

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static final play$lambda$10(Lcom/shilapi/xcertplay/AudioChannelPreview;IIZ)V
    .locals 11

    .line 37
    const-string v1, "DiPlayAudioPreview"

    const/4 v2, 0x0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->closed:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto/16 :goto_a

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/shilapi/xcertplay/AudioChannelPreview;->tone()[B

    move-result-object v0

    const/4 v3, 0x4

    const v4, 0xbb80

    const/4 v5, 0x2

    .line 41
    invoke-static {v4, v3, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    if-lez v6, :cond_c

    .line 45
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    const/16 v9, 0x2580

    const/4 v10, 0x1

    if-lt v7, v8, :cond_4

    if-nez p2, :cond_3

    .line 47
    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    if-eqz p3, :cond_1

    const/16 v8, 0xc

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    .line 48
    :goto_0
    invoke-static {v7, v8}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    if-eqz p3, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    .line 50
    :goto_1
    invoke-static {v7, v8}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 52
    invoke-static {v7}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v7

    goto :goto_2

    .line 54
    :cond_3
    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-static {v7, p2}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-static {v7}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v7

    .line 56
    :goto_2
    new-instance v8, Landroid/media/AudioTrack$Builder;

    invoke-direct {v8}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 57
    invoke-static {v8, v7}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v7

    .line 59
    new-instance v8, Landroid/media/AudioFormat$Builder;

    invoke-direct {v8}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 60
    invoke-static {v8, v5}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat$Builder;I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    .line 61
    invoke-static {v5, v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioFormat$Builder;I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    .line 62
    invoke-static {v4, v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/media/AudioFormat$Builder;I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 63
    invoke-static {v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat$Builder;)Landroid/media/AudioFormat;

    move-result-object v3

    .line 58
    invoke-static {v7, v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    .line 65
    invoke-static {v3, v10}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    .line 66
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    .line 67
    invoke-static {v3}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    move-result-object v3

    goto :goto_4

    .line 70
    :cond_4
    sget-object v3, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    if-nez p2, :cond_5

    const/4 v4, 0x3

    goto :goto_3

    :cond_5
    move v4, p2

    .line 73
    :goto_3
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    const v5, 0xbb80

    const/4 v6, 0x4

    const/4 v7, 0x2

    .line 70
    invoke-virtual/range {v3 .. v8}, Lcom/shilapi/xcertplay/compat/AudioCompat;->streamTrack(IIIII)Landroid/media/AudioTrack;

    move-result-object v3

    .line 45
    :goto_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 77
    :try_start_1
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v10, :cond_b

    .line 78
    iget-boolean v4, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->closed:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, p1, :cond_6

    goto/16 :goto_8

    .line 79
    :cond_6
    iget-object v4, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    sget-object v4, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    const v5, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v3, v5}, Lcom/shilapi/xcertplay/compat/AudioCompat;->setVolume(Landroid/media/AudioTrack;F)V

    .line 81
    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    const/4 v4, 0x0

    .line 83
    :goto_5
    array-length v5, v0

    if-ge v4, v5, :cond_8

    iget-boolean v5, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->closed:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v5, p1, :cond_8

    .line 84
    sget-object v5, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    array-length v6, v0

    sub-int/2addr v6, v4

    const/16 v7, 0x1000

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v3, v0, v4, v6}, Lcom/shilapi/xcertplay/compat/AudioCompat;->writeBlocking(Landroid/media/AudioTrack;[BII)I

    move-result v5

    if-lez v5, :cond_7

    add-int/2addr v4, v5

    goto :goto_5

    .line 85
    :cond_7
    const-string p3, "Could not write preview tone"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_8
    iget-boolean v5, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->closed:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v5, p1, :cond_9

    array-length v0, v0

    if-ne v4, v0, :cond_9

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview started channel="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " navigation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-wide/16 v4, 0x78

    .line 91
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 100
    iget-object p0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v3, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    :try_start_2
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object p0, v0

    :goto_6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    goto/16 :goto_c

    .line 100
    :cond_a
    :goto_8
    iget-object p0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v3, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    :try_start_3
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    return-void

    .line 77
    :cond_b
    :try_start_4
    const-string p3, "Audio output did not initialize"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_b

    .line 44
    :cond_c
    :try_start_5
    const-string p3, "No PCM output buffer is available"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 100
    :cond_d
    :goto_a
    iget-object p0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v2, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :catchall_2
    move-exception v0

    move-object p1, v0

    move-object v3, v2

    goto :goto_d

    :catch_1
    move-exception v0

    move-object p3, v0

    move-object v3, v2

    .line 95
    :goto_b
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel preview unavailable channel="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {v1, v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    iget-object p3, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda13;-><init>(Lcom/shilapi/xcertplay/AudioChannelPreview;II)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 100
    iget-object p0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v3, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v3, :cond_e

    .line 101
    :try_start_7
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :catch_2
    move-object v3, v2

    .line 93
    :catch_3
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 100
    iget-object p0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v3, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v3, :cond_e

    .line 101
    :try_start_9
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_7

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_e
    :goto_c
    return-void

    :catchall_5
    move-exception v0

    move-object p1, v0

    .line 100
    :goto_d
    iget-object p0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v3, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v3, :cond_f

    .line 101
    :try_start_a
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object p0, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    :cond_f
    goto :goto_10

    :goto_f
    throw p1

    :goto_10
    goto :goto_f
.end method

.method private static final play$lambda$10$lambda$7(Lcom/shilapi/xcertplay/AudioChannelPreview;II)V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->onUnavailable:Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final tone()[B
    .locals 10

    const v0, 0xe100

    .line 117
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7080

    if-ge v1, v2, :cond_0

    int-to-double v2, v1

    const/16 v4, 0x1e0

    int-to-double v4, v4

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v2, v4

    rsub-int v8, v1, 0x707f

    int-to-double v8, v8

    .line 120
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(DD)D

    move-result-wide v4

    const-wide v6, 0x40b59933fc6a96c1L    # 5529.203070318036

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    const v6, 0xbb80

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v4

    const/16 v4, 0x7fff

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    mul-double v2, v2, v4

    double-to-int v2, v2

    mul-int/lit8 v3, v1, 0x2

    int-to-byte v4, v2

    .line 123
    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    .line 124
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final worker$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "diplay-channel-preview"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->closed:Z

    .line 108
    iget-object v1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 109
    iget-object v1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->pending:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/AudioChannelPreview;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public final play(IZ)V
    .locals 3

    .line 31
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    const/16 v0, 0xb

    if-ge p1, v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->pending:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->activeTrack:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/AudioChannelPreview;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/shilapi/xcertplay/AudioChannelPreview$$ExternalSyntheticLambda15;-><init>(Lcom/shilapi/xcertplay/AudioChannelPreview;IIZ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/AudioChannelPreview;->pending:Ljava/util/concurrent/Future;

    return-void

    .line 32
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
