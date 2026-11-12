.class public final Lcom/shilapi/xcertplay/compat/CodecAvailability;
.super Ljava/lang/Object;
.source "MediaCodecCompat.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCodecCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCodecCompat.kt\ncom/shilapi/xcertplay/compat/CodecAvailability\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,48:1\n1761#2,2:49\n1763#2:53\n12637#3,2:51\n*S KotlinDebug\n*F\n+ 1 MediaCodecCompat.kt\ncom/shilapi/xcertplay/compat/CodecAvailability\n*L\n39#1:49,2\n39#1:53\n41#1:51,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\u000b\u0010\u0007R\u001b\u0010\r\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u000e\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/compat/CodecAvailability;",
        "",
        "<init>",
        "()V",
        "opusDecoder",
        "",
        "getOpusDecoder",
        "()Z",
        "opusDecoder$delegate",
        "Lkotlin/Lazy;",
        "opusEncoder",
        "getOpusEncoder",
        "opusEncoder$delegate",
        "aacDecoder",
        "getAacDecoder",
        "aacDecoder$delegate",
        "has",
        "mime",
        "",
        "encoder",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/compat/CodecAvailability;

.field private static final aacDecoder$delegate:Lkotlin/Lazy;

.field private static final opusDecoder$delegate:Lkotlin/Lazy;

.field private static final opusEncoder$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Fe863ftJv0aeXBhkR7GZhqAyxHA()Z
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/compat/CodecAvailability;->opusEncoder_delegate$lambda$1()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$nM4B-n5ctdphw-mxAJ4fS6aQ7VM()Z
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/compat/CodecAvailability;->opusDecoder_delegate$lambda$0()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$z9HedVmSZ1bROmg5v1x7N_BcfiI()Z
    .locals 1

    invoke-static {}, Lcom/shilapi/xcertplay/compat/CodecAvailability;->aacDecoder_delegate$lambda$2()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/CodecAvailability;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->INSTANCE:Lcom/shilapi/xcertplay/compat/CodecAvailability;

    .line 33
    new-instance v0, Lcom/shilapi/xcertplay/compat/CodecAvailability$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/CodecAvailability$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->opusDecoder$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lcom/shilapi/xcertplay/compat/CodecAvailability$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/CodecAvailability$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->opusEncoder$delegate:Lkotlin/Lazy;

    .line 35
    new-instance v0, Lcom/shilapi/xcertplay/compat/CodecAvailability$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/compat/CodecAvailability$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->aacDecoder$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final aacDecoder_delegate$lambda$2()Z
    .locals 3

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->INSTANCE:Lcom/shilapi/xcertplay/compat/CodecAvailability;

    const-string v1, "audio/mp4a-latm"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/compat/CodecAvailability;->has(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final has(Ljava/lang/String;Z)Z
    .locals 7

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 39
    :try_start_0
    invoke-static {}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v1

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 49
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 40
    invoke-static {v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 41
    invoke-static {v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result v4

    if-ne v4, p2, :cond_2

    invoke-static {v3}, Landroidx/tracing/Trace$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSupportedTypes(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    .line 51
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    check-cast v6, Ljava/lang/String;

    .line 41
    invoke-static {v6, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    move v0, v2

    :catchall_0
    return v0
.end method

.method private static final opusDecoder_delegate$lambda$0()Z
    .locals 3

    .line 33
    sget-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->INSTANCE:Lcom/shilapi/xcertplay/compat/CodecAvailability;

    const-string v1, "audio/opus"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/compat/CodecAvailability;->has(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static final opusEncoder_delegate$lambda$1()Z
    .locals 3

    .line 34
    sget-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->INSTANCE:Lcom/shilapi/xcertplay/compat/CodecAvailability;

    const-string v1, "audio/opus"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shilapi/xcertplay/compat/CodecAvailability;->has(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getAacDecoder()Z
    .locals 1

    .line 35
    sget-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->aacDecoder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getOpusDecoder()Z
    .locals 1

    .line 33
    sget-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->opusDecoder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getOpusEncoder()Z
    .locals 1

    .line 34
    sget-object v0, Lcom/shilapi/xcertplay/compat/CodecAvailability;->opusEncoder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
