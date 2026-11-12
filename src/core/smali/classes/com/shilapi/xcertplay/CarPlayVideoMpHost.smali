.class public final Lcom/shilapi/xcertplay/CarPlayVideoMpHost;
.super Ljava/lang/Object;
.source "CarPlayVideoMpHost.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/CarPlayVideoMpHost$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarPlayVideoMpHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarPlayVideoMpHost.kt\ncom/shilapi/xcertplay/CarPlayVideoMpHost\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,130:1\n1#2:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0000\u0018\u0000 %2\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\r0\u0013H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0014H\u0016J\u0010\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\tH\u0016J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u0014H\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0014H\u0016J\u000f\u0010 \u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020\rH\u0016J\u0010\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0014H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/CarPlayVideoMpHost;",
        "Lcom/shilapi/xcertplay/CarPlayVideoPlayerHost;",
        "<init>",
        "()V",
        "video",
        "Landroid/widget/VideoView;",
        "player",
        "Landroid/media/MediaPlayer;",
        "prepared",
        "",
        "loadedUrl",
        "",
        "attach",
        "",
        "activity",
        "Landroid/app/Activity;",
        "container",
        "Landroid/widget/FrameLayout;",
        "onError",
        "Lkotlin/Function1;",
        "",
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
        "seekExactly",
        "millis",
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
.field private static final Companion:Lcom/shilapi/xcertplay/CarPlayVideoMpHost$Companion;

.field public static final MEDIA_ERROR_IO:I = -0x3ec
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEEK_CLOSEST:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DiPlay-Video"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private loadedUrl:Ljava/lang/String;

.field private player:Landroid/media/MediaPlayer;

.field private prepared:Z

.field private video:Landroid/widget/VideoView;


# direct methods
.method public static synthetic $r8$lambda$9oBBwoeJ-Ny6EeG9P5n5bKogd8c(Lkotlin/jvm/functions/Function1;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->attach$lambda$2(Lkotlin/jvm/functions/Function1;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EVl2tjLaa3nni5CraGkVhN6t5Uo(Lcom/shilapi/xcertplay/CarPlayVideoMpHost;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->attach$lambda$1(Lcom/shilapi/xcertplay/CarPlayVideoMpHost;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->Companion:Lcom/shilapi/xcertplay/CarPlayVideoMpHost$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final attach$lambda$1(Lcom/shilapi/xcertplay/CarPlayVideoMpHost;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->player:Landroid/media/MediaPlayer;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->prepared:Z

    .line 36
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayVideo;->getPendingSeekMillis()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->seekExactly(I)V

    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/CarPlayVideo;->setPendingSeekMillis(Ljava/lang/Integer;)V

    .line 37
    :cond_0
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/CarPlayVideo;->getPlaying()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->applyRate(Z)V

    return-void
.end method

.method private static final attach$lambda$2(Lkotlin/jvm/functions/Function1;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "player error extra="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DiPlay-Video"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->Companion:Lcom/shilapi/xcertplay/CarPlayVideoMpHost$Companion;

    invoke-virtual {p1, p3}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost$Companion;->mapPlayerError(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private final seekExactly(I)V
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 99
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;

    .line 100
    const-class v2, Landroid/media/MediaPlayer;

    .line 101
    const-string v3, "seekTo"

    const/4 v4, 0x2

    .line 103
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 100
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    int-to-long v5, p1

    .line 104
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 99
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    :cond_0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public applyRate(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->video:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public applySeek(I)V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->prepared:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->seekExactly(I)V

    return-void
.end method

.method public attach(Landroid/app/Activity;Landroid/widget/FrameLayout;Lkotlin/jvm/functions/Function1;)V
    .locals 3
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

    .line 25
    new-instance v0, Landroid/widget/VideoView;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->video:Landroid/widget/VideoView;

    .line 28
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 30
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2, p1, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, -0x1000000

    .line 32
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 33
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayVideoMpHost$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost$$ExternalSyntheticLambda0;-><init>(Lcom/shilapi/xcertplay/CarPlayVideoMpHost;)V

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 39
    new-instance p1, Lcom/shilapi/xcertplay/CarPlayVideoMpHost$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public currentPositionMillis()Ljava/lang/Integer;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->video:Landroid/widget/VideoView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 85
    :cond_0
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->prepared:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public load(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->video:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->loadedUrl:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->loadedUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->prepared:Z

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->player:Landroid/media/MediaPlayer;

    .line 63
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    if-lez p2, :cond_2

    .line 64
    sget-object p1, Lcom/shilapi/xcertplay/CarPlayVideo;->INSTANCE:Lcom/shilapi/xcertplay/CarPlayVideo;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shilapi/xcertplay/CarPlayVideo;->setPendingSeekMillis(Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    .line 89
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;

    iget-object v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->video:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_1
    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->video:Landroid/widget/VideoView;

    .line 91
    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 92
    iput-boolean v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->prepared:Z

    .line 93
    iput-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->loadedUrl:Ljava/lang/String;

    return-void
.end method

.method public skip(I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->video:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->prepared:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {v1, v0, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->seekExactly(I)V

    return-void
.end method

.method public state()Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;
    .locals 14

    .line 47
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->video:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    new-instance v1, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;-><init>(ZZDDD)V

    return-object v1

    .line 48
    :cond_0
    new-instance v2, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;

    .line 49
    iget-boolean v3, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->prepared:Z

    .line 50
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    .line 51
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    int-to-double v5, v1

    const-wide v7, 0x408f400000000000L    # 1000.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    .line 52
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->prepared:Z

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v1, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    int-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v7

    goto :goto_0

    :cond_1
    move-wide v12, v10

    .line 53
    :goto_0
    iget-boolean v1, p0, Lcom/shilapi/xcertplay/CarPlayVideoMpHost;->prepared:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v1, v9}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v7

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v10, v9, v0

    :cond_2
    move-wide v9, v10

    move-wide v7, v12

    .line 48
    invoke-direct/range {v2 .. v10}, Lcom/shilapi/xcertplay/airplay/VideoInCar$PlayerState;-><init>(ZZDDD)V

    return-object v2
.end method
