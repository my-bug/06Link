.class public final Lcom/shilapi/xcertplay/media/KeyVolumeFollower;
.super Ljava/lang/Object;
.source "KeyVolumeFollower.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/KeyVolumeFollower$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyVolumeFollower.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyVolumeFollower.kt\ncom/shilapi/xcertplay/media/KeyVolumeFollower\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000E\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0014\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aBQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00126\u0010\u0006\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u0018\u001a\u00020\rJ\u0006\u0010\u0019\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R>\u0010\u0006\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/KeyVolumeFollower;",
        "",
        "context",
        "Landroid/content/Context;",
        "trackStream",
        "",
        "onGain",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "stream",
        "",
        "gain",
        "",
        "<init>",
        "(Landroid/content/Context;ILkotlin/jvm/functions/Function2;)V",
        "app",
        "audio",
        "Landroid/media/AudioManager;",
        "receiver",
        "com/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1",
        "Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;",
        "registered",
        "",
        "start",
        "stop",
        "Companion",
        "shared_release"
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
.field public static final ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final Companion:Lcom/shilapi/xcertplay/media/KeyVolumeFollower$Companion;

.field public static final EXTRA_STREAM:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLOOR_DB:D = -40.0

.field private static final KEY_STREAM:Ljava/lang/String; = "last_stream"

.field private static final PREFS:Ljava/lang/String; = "free_auto_key_volume"

.field public static final TAG:Ljava/lang/String; = "DiPlay-KeyVolume"


# instance fields
.field private final app:Landroid/content/Context;

.field private final audio:Landroid/media/AudioManager;

.field private final onGain:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final receiver:Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;

.field private volatile registered:Z

.field private final trackStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->Companion:Lcom/shilapi/xcertplay/media/KeyVolumeFollower$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onGain"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p2, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->trackStream:I

    .line 25
    iput-object p3, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->onGain:Lkotlin/jvm/functions/Function2;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->app:Landroid/content/Context;

    .line 28
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/media/AudioManager;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/media/AudioManager;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->audio:Landroid/media/AudioManager;

    .line 29
    new-instance p1, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;-><init>(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->receiver:Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x3

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;-><init>(Landroid/content/Context;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getApp$p(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->app:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getAudio$p(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)Landroid/media/AudioManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->audio:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static final synthetic access$getOnGain$p(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->onGain:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getTrackStream$p(Lcom/shilapi/xcertplay/media/KeyVolumeFollower;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->trackStream:I

    return p0
.end method


# virtual methods
.method public final start()V
    .locals 0

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->registered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->registered:Z

    .line 52
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->app:Landroid/content/Context;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/KeyVolumeFollower;->receiver:Lcom/shilapi/xcertplay/media/KeyVolumeFollower$receiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
