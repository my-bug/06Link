.class public final Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;,
        Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;,
        Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMediaSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMediaSink.kt\ncom/shilapi/xcertplay/media/AudioFocusCoordinator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1750:1\n1869#2:1751\n1870#2:1753\n774#2:1754\n865#2,2:1755\n1869#2,2:1757\n1999#2,14:1759\n1869#2,2:1773\n1#3:1752\n*S KotlinDebug\n*F\n+ 1 AndroidMediaSink.kt\ncom/shilapi/xcertplay/media/AudioFocusCoordinator\n*L\n74#1:1751\n74#1:1753\n96#1:1754\n96#1:1755,2\n96#1:1757,2\n97#1:1759,14\n156#1:1773,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0000\u0018\u0000 52\u00020\u0001:\u000245B/\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020!J(\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020\u00182\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020\rJ\u000e\u0010+\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u0012J\u0008\u0010,\u001a\u00020\tH\u0002J\u0012\u0010-\u001a\u00020\t2\u0008\u0010.\u001a\u0004\u0018\u00010\u0013H\u0002J\u0010\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020!H\u0002J\u000c\u00101\u001a\u00020\r*\u00020\u0018H\u0002J\u0010\u00102\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013`\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u001c\u001a&\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u00120\u0012 \u001e*\u0012\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u00120\u0012\u0018\u00010\u001f0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;",
        "",
        "context",
        "Landroid/content/Context;",
        "enabled",
        "",
        "report",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V",
        "requestedStream",
        "",
        "manager",
        "Landroid/media/AudioManager;",
        "active",
        "Ljava/util/LinkedHashMap;",
        "Landroid/media/AudioTrack;",
        "Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;",
        "Lkotlin/collections/LinkedHashMap;",
        "request",
        "Landroid/media/AudioFocusRequest;",
        "requestedChannel",
        "Lcom/shilapi/xcertplay/media/AudioChannel;",
        "legacyFocusHeld",
        "listener",
        "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
        "musicTracks",
        "",
        "kotlin.jvm.PlatformType",
        "",
        "keyGain",
        "",
        "duckGain",
        "setKeyGain",
        "gain",
        "acquire",
        "track",
        "channel",
        "attributes",
        "Landroid/media/AudioAttributes;",
        "streamType",
        "release",
        "refreshRequest",
        "refreshLegacyRequest",
        "primary",
        "setVolume",
        "volume",
        "focusPriority",
        "inCall",
        "audio",
        "Entry",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;

.field public static final DUCKED_VOLUME:F = 0.2f

.field public static final FULL_VOLUME:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "DiPlay-AudioFocus"


# instance fields
.field private final active:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/media/AudioTrack;",
            "Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private duckGain:F

.field private final enabled:Z

.field private keyGain:F

.field private legacyFocusHeld:Z

.field private final listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final manager:Landroid/media/AudioManager;

.field private final musicTracks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final report:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private request:Landroid/media/AudioFocusRequest;

.field private requestedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

.field private requestedStream:I


# direct methods
.method public static synthetic $r8$lambda$-UGhVS-ij379l1W2O3X-j6mAiYQ(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->_init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3ifXyAbHEk9qTyxhuUULHD97siM(Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->listener$lambda$3(Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->Companion:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "report"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01AudioMixDiagnostic;->bind(Landroid/content/Context;)V

    .line 41
    iput-boolean p2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->enabled:Z

    .line 42
    iput-object p3, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->report:Lkotlin/jvm/functions/Function1;

    const/4 p2, -0x1

    .line 47
    iput p2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedStream:I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 49
    const-string p3, "audio"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of p3, p1, Landroid/media/AudioManager;

    if-eqz p3, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/media/AudioManager;

    :cond_1
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->manager:Landroid/media/AudioManager;

    .line 50
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    .line 54
    new-instance p1, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;)V

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 67
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->musicTracks:Ljava/util/Set;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 68
    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->keyGain:F

    .line 69
    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->duckGain:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 42
    new-instance p3, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$$ExternalSyntheticLambda0;-><init>()V

    .line 39
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final focusPriority(Lcom/shilapi/xcertplay/media/AudioChannel;)I
    .locals 3

    .line 162
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioChannel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method private final inCall(Landroid/media/AudioManager;)Z
    .locals 3

    const/4 v0, 0x0

    .line 169
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    .line 170
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 169
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 171
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private static final listener$lambda$3(Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;I)V
    .locals 4

    const-string v0, "Audio: focus change="

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->report:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " activeTracks="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 59
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->setVolume(F)V

    goto :goto_1

    :cond_1
    const p1, 0x3e4ccccd    # 0.2f

    .line 58
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->setVolume(F)V

    .line 63
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final refreshLegacyRequest(Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;)V
    .locals 7

    .line 128
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->manager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 130
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->legacyFocusHeld:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->legacyFocusHeld:Z

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    const/4 p1, -0x1

    .line 133
    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedStream:I

    return-void

    .line 136
    :cond_2
    sget-object v1, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->Companion:Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getStreamType()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->inCall(Landroid/media/AudioManager;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;->legacyFocusStream(Lcom/shilapi/xcertplay/media/AudioChannel;IZ)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 137
    iget-boolean v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->legacyFocusHeld:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedStream:I

    if-ne v2, v1, :cond_3

    goto/16 :goto_0

    .line 138
    :cond_3
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v2

    sget-object v3, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/shilapi/xcertplay/media/AudioChannel;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 p1, 0x4

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    const/4 v4, 0x1

    .line 144
    :cond_6
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2, v1, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 145
    iput-boolean v3, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->legacyFocusHeld:Z

    .line 146
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    .line 147
    iput v1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedStream:I

    .line 148
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getStreamType()I

    move-result p1

    .line 149
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Audio: focus requested (legacy) channel="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " stream="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " track="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " gain="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " granted="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " activeTracks="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    const-string v0, "DiPlay-AudioFocus"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->report:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    return-void
.end method

.method private final refreshRequest()V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1754
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1755
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/AudioTrack;

    .line 96
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 1755
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1756
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 1754
    check-cast v1, Ljava/lang/Iterable;

    .line 1757
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 96
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1759
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1760
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    .line 1761
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1762
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 1763
    :cond_4
    move-object v3, v1

    check-cast v3, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;

    .line 97
    invoke-virtual {v3}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->focusPriority(Lcom/shilapi/xcertplay/media/AudioChannel;)I

    move-result v3

    .line 1765
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1766
    move-object v5, v4

    check-cast v5, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;

    .line 97
    invoke-virtual {v5}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->focusPriority(Lcom/shilapi/xcertplay/media/AudioChannel;)I

    move-result v5

    if-ge v3, v5, :cond_6

    move-object v1, v4

    move v3, v5

    .line 1771
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 97
    :goto_2
    check-cast v1, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_7

    invoke-direct {p0, v1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->refreshLegacyRequest(Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;)V

    return-void

    :cond_7
    if-nez v1, :cond_9

    .line 100
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->request:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->manager:Landroid/media/AudioManager;

    if-eqz v1, :cond_8

    invoke-static {v1, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 101
    :cond_8
    iput-object v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->request:Landroid/media/AudioFocusRequest;

    .line 102
    iput-object v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    return-void

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->request:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v3

    if-ne v0, v3, :cond_a

    goto :goto_3

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->request:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->manager:Landroid/media/AudioManager;

    if-eqz v3, :cond_b

    invoke-static {v3, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 107
    :cond_b
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v0

    sget-object v3, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/AudioChannel;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    goto :goto_3

    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 113
    :cond_d
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 114
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    if-nez v4, :cond_e

    :goto_3
    return-void

    :cond_e
    invoke-static {v0, v4}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 115
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v4, v5}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->request:Landroid/media/AudioFocusRequest;

    .line 118
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v4

    iput-object v4, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->requestedChannel:Lcom/shilapi/xcertplay/media/AudioChannel;

    .line 119
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->manager:Landroid/media/AudioManager;

    if-eqz v4, :cond_f

    invoke-static {v4, v0}, Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 120
    :cond_f
    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Audio: focus requested channel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " gain="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " granted="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " activeTracks="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "DiPlay-AudioFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->report:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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

.method private final setVolume(F)V
    .locals 4

    invoke-static {}, Lcom/shilapi/xcertplay/E01AudioRoute;->supported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->duckGain:F

    .line 156
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1773
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 157
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->musicTracks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->keyGain:F

    mul-float v2, v2, p1

    goto :goto_1

    :cond_1
    move v2, p1

    .line 158
    :goto_1
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    invoke-virtual {v1, v2, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized acquire(Landroid/media/AudioTrack;Lcom/shilapi/xcertplay/media/AudioChannel;Landroid/media/AudioAttributes;I)V
    .locals 3

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->manager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->report:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, v1, p4, v2}, Lcom/shilapi/xcertplay/E01AudioScene;->register(Landroid/media/AudioManager;Landroid/media/AudioTrack;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannel;->MEDIA:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-ne p2, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->musicTracks:Ljava/util/Set;

    const-string v1, "musicTracks"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    iget v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->keyGain:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    sget-object v0, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    iget v1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->keyGain:F

    iget v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->duckGain:F

    mul-float v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/shilapi/xcertplay/compat/AudioCompat;->setVolume(Landroid/media/AudioTrack;F)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->enabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->manager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannel;->NAVIGATION:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;

    invoke-direct {v1, p2, p3, p4}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Entry;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Landroid/media/AudioAttributes;I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->refreshRequest()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    monitor-exit p0

    return-void

    .line 83
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final declared-synchronized release(Landroid/media/AudioTrack;)V
    .locals 2

    invoke-static {p1}, Lcom/shilapi/xcertplay/E01AudioScene;->release(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->musicTracks:Ljava/util/Set;

    const-string v1, "musicTracks"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->active:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->refreshRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setKeyGain(F)V
    .locals 4

    invoke-static {}, Lcom/shilapi/xcertplay/E01AudioRoute;->supported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    :try_start_0
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->keyGain:F

    .line 74
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->musicTracks:Ljava/util/Set;

    const-string v0, "musicTracks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 1751
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;

    sget-object v1, Lcom/shilapi/xcertplay/compat/AudioCompat;->INSTANCE:Lcom/shilapi/xcertplay/compat/AudioCompat;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->keyGain:F

    iget v3, p0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;->duckGain:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/shilapi/xcertplay/compat/AudioCompat;->setVolume(Landroid/media/AudioTrack;F)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 75
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
