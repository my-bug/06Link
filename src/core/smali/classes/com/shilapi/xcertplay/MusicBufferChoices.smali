.class public final Lcom/shilapi/xcertplay/MusicBufferChoices;
.super Ljava/lang/Object;
.source "PerformanceChoices.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPerformanceChoices.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PerformanceChoices.kt\ncom/shilapi/xcertplay/MusicBufferChoices\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n1563#2:91\n1634#2,3:92\n1563#2:95\n1634#2,3:96\n*S KotlinDebug\n*F\n+ 1 PerformanceChoices.kt\ncom/shilapi/xcertplay/MusicBufferChoices\n*L\n24#1:91\n24#1:92,3\n27#1:95\n27#1:96,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/MusicBufferChoices;",
        "",
        "<init>",
        "()V",
        "labelRes",
        "",
        "millis",
        "labels",
        "",
        "",
        "context",
        "Landroid/content/Context;",
        "helps",
        "selectedIndex",
        "save",
        "",
        "index",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/MusicBufferChoices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/MusicBufferChoices;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/MusicBufferChoices;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/MusicBufferChoices;->INSTANCE:Lcom/shilapi/xcertplay/MusicBufferChoices;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final helps(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->getPresets()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 96
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 27
    sget-object v3, Lcom/shilapi/xcertplay/OptionHelp;->INSTANCE:Lcom/shilapi/xcertplay/OptionHelp;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/OptionHelp;->buffer(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final labelRes(I)I
    .locals 3

    if-eqz p1, :cond_6

    const/16 v0, 0x32

    if-eq p1, v0, :cond_5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 v0, 0x96

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 20
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->s_1000_ms_most_stable:I

    return p1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no label for a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ms music buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->s_500_ms:I

    return p1

    .line 18
    :cond_2
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->s_300_ms_default:I

    return p1

    .line 17
    :cond_3
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->music_buffer_150_ms:I

    return p1

    .line 16
    :cond_4
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->music_buffer_100_ms:I

    return p1

    .line 15
    :cond_5
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->music_buffer_50_ms:I

    return p1

    .line 14
    :cond_6
    sget p1, Lcom/shilapi/xcertplay/host/R$string;->music_buffer_minimum:I

    return p1
.end method

.method public final labels(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->getPresets()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 92
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 24
    sget-object v3, Lcom/shilapi/xcertplay/MusicBufferChoices;->INSTANCE:Lcom/shilapi/xcertplay/MusicBufferChoices;

    invoke-virtual {v3, v2}, Lcom/shilapi/xcertplay/MusicBufferChoices;->labelRes(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final save(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    sget-object v1, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

    invoke-virtual {v1}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->getPresets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/AirPlayPersistence;->saveMediaBufferMillis(Landroid/content/Context;I)V

    return-void
.end method

.method public final selectedIndex(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaAudioBuffer;

    invoke-virtual {v0}, Lcom/shilapi/xcertplay/media/MediaAudioBuffer;->getPresets()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/shilapi/xcertplay/AirPlayPersistence;->INSTANCE:Lcom/shilapi/xcertplay/AirPlayPersistence;

    invoke-virtual {v1, p1}, Lcom/shilapi/xcertplay/AirPlayPersistence;->loadMediaBufferMillis(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    return p1
.end method
