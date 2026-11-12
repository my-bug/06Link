.class public final Lcom/shilapi/xcertplay/media/AudioChannelMapper;
.super Ljava/lang/Object;
.source "AudioChannelMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/AudioChannelMapper$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005J\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010J \u0010\u0012\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J \u0010\u0013\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u0018\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AudioChannelMapper;",
        "",
        "<init>",
        "()V",
        "STREAM_TYPE_MAIN_HIGH_AUDIO",
        "",
        "DEFAULT_NAVIGATION_STREAM_TYPE",
        "map",
        "Lcom/shilapi/xcertplay/media/AudioChannelSelection;",
        "audioType",
        "",
        "payloadType",
        "mode",
        "Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;",
        "navigationStreamType",
        "usesNavigationStream",
        "",
        "advanced",
        "mapMobileCompatible",
        "mapAutomotiveBus",
        "mainHighAudioOrNavigation",
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
.field public static final DEFAULT_NAVIGATION_STREAM_TYPE:I = 0xe

.field public static final INSTANCE:Lcom/shilapi/xcertplay/media/AudioChannelMapper;

.field public static final STREAM_TYPE_MAIN_HIGH_AUDIO:I = 0x66


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/media/AudioChannelMapper;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/media/AudioChannelMapper;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->INSTANCE:Lcom/shilapi/xcertplay/media/AudioChannelMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final mainHighAudioOrNavigation(II)Lcom/shilapi/xcertplay/media/AudioChannelSelection;
    .locals 7

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 86
    new-instance v1, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object v2, Lcom/shilapi/xcertplay/media/AudioChannel;->MEDIA:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v3, Lcom/shilapi/xcertplay/media/AudioContentType;->MUSIC:Lcom/shilapi/xcertplay/media/AudioContentType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 88
    :cond_0
    new-instance p1, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannel;->NAVIGATION:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v1, Lcom/shilapi/xcertplay/media/AudioContentType;->SPEECH:Lcom/shilapi/xcertplay/media/AudioContentType;

    invoke-direct {p1, v0, v1, p2}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;I)V

    return-object p1
.end method

.method public static synthetic map$default(Lcom/shilapi/xcertplay/media/AudioChannelMapper;Ljava/lang/String;ILcom/shilapi/xcertplay/media/AudioChannelMappingMode;IILjava/lang/Object;)Lcom/shilapi/xcertplay/media/AudioChannelSelection;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/16 p4, 0xe

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->map(Ljava/lang/String;ILcom/shilapi/xcertplay/media/AudioChannelMappingMode;I)Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object p0

    return-object p0
.end method

.method private final mapAutomotiveBus(Ljava/lang/String;II)Lcom/shilapi/xcertplay/media/AudioChannelSelection;
    .locals 6

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "compatibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "telephony"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object v1, Lcom/shilapi/xcertplay/media/AudioChannel;->PHONE:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v2, Lcom/shilapi/xcertplay/media/AudioContentType;->SPEECH:Lcom/shilapi/xcertplay/media/AudioContentType;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 74
    :sswitch_3
    const-string v0, "media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object v1, Lcom/shilapi/xcertplay/media/AudioChannel;->MEDIA:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v2, Lcom/shilapi/xcertplay/media/AudioContentType;->MUSIC:Lcom/shilapi/xcertplay/media/AudioContentType;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 74
    :sswitch_4
    const-string v0, "alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 80
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object p2, Lcom/shilapi/xcertplay/media/AudioChannel;->NAVIGATION:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v0, Lcom/shilapi/xcertplay/media/AudioContentType;->SPEECH:Lcom/shilapi/xcertplay/media/AudioContentType;

    invoke-direct {p1, p2, v0, p3}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;I)V

    return-object p1

    .line 74
    :sswitch_5
    const-string/jumbo v0, "speechrecognition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object v1, Lcom/shilapi/xcertplay/media/AudioChannel;->ASSISTANT:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v2, Lcom/shilapi/xcertplay/media/AudioContentType;->SPEECH:Lcom/shilapi/xcertplay/media/AudioContentType;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 81
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->mainHighAudioOrNavigation(II)Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0xcb88a6b -> :sswitch_5
        0x589895c -> :sswitch_4
        0x62f6fe4 -> :sswitch_3
        0x2eaeb418 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x77cdc570 -> :sswitch_0
    .end sparse-switch
.end method

.method private final mapMobileCompatible(Ljava/lang/String;II)Lcom/shilapi/xcertplay/media/AudioChannelSelection;
    .locals 6

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "compatibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "telephony"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object v1, Lcom/shilapi/xcertplay/media/AudioChannel;->PHONE:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v2, Lcom/shilapi/xcertplay/media/AudioContentType;->SPEECH:Lcom/shilapi/xcertplay/media/AudioContentType;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 60
    :sswitch_3
    const-string v0, "media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object v1, Lcom/shilapi/xcertplay/media/AudioChannel;->MEDIA:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v2, Lcom/shilapi/xcertplay/media/AudioContentType;->MUSIC:Lcom/shilapi/xcertplay/media/AudioContentType;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 60
    :sswitch_4
    const-string v0, "alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    new-instance p1, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object p2, Lcom/shilapi/xcertplay/media/AudioChannel;->NAVIGATION:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v0, Lcom/shilapi/xcertplay/media/AudioContentType;->SPEECH:Lcom/shilapi/xcertplay/media/AudioContentType;

    invoke-direct {p1, p2, v0, p3}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;I)V

    return-object p1

    .line 60
    :sswitch_5
    const-string/jumbo v0, "speechrecognition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 63
    :cond_3
    new-instance v0, Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    sget-object v1, Lcom/shilapi/xcertplay/media/AudioChannel;->ASSISTANT:Lcom/shilapi/xcertplay/media/AudioChannel;

    sget-object v2, Lcom/shilapi/xcertplay/media/AudioContentType;->SPEECH:Lcom/shilapi/xcertplay/media/AudioContentType;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;-><init>(Lcom/shilapi/xcertplay/media/AudioChannel;Lcom/shilapi/xcertplay/media/AudioContentType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 67
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->mainHighAudioOrNavigation(II)Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0xcb88a6b -> :sswitch_5
        0x589895c -> :sswitch_4
        0x62f6fe4 -> :sswitch_3
        0x2eaeb418 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x77cdc570 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final map(Ljava/lang/String;ILcom/shilapi/xcertplay/media/AudioChannelMappingMode;I)Lcom/shilapi/xcertplay/media/AudioChannelSelection;
    .locals 1

    const-string v0, "audioType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannelMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 49
    invoke-direct {p0, p1, p2, p4}, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->mapAutomotiveBus(Ljava/lang/String;II)Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 48
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->mapMobileCompatible(Ljava/lang/String;II)Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object p1

    return-object p1
.end method

.method public final usesNavigationStream(Ljava/lang/String;IZ)Z
    .locals 8

    const-string v0, "audioType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 54
    sget-object v4, Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;->MOBILE_COMPATIBLE:Lcom/shilapi/xcertplay/media/AudioChannelMappingMode;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/shilapi/xcertplay/media/AudioChannelMapper;->map$default(Lcom/shilapi/xcertplay/media/AudioChannelMapper;Ljava/lang/String;ILcom/shilapi/xcertplay/media/AudioChannelMappingMode;IILjava/lang/Object;)Lcom/shilapi/xcertplay/media/AudioChannelSelection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioChannelSelection;->getChannel()Lcom/shilapi/xcertplay/media/AudioChannel;

    move-result-object p1

    sget-object p2, Lcom/shilapi/xcertplay/media/AudioChannel;->NAVIGATION:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
