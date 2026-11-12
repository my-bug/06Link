.class public final Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;
.super Ljava/lang/Object;
.source "AndroidMediaSink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/AudioFocusCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;",
        "",
        "<init>",
        "()V",
        "legacyFocusStream",
        "",
        "channel",
        "Lcom/shilapi/xcertplay/media/AudioChannel;",
        "trackStream",
        "inCall",
        "",
        "(Lcom/shilapi/xcertplay/media/AudioChannel;IZ)Ljava/lang/Integer;",
        "TAG",
        "",
        "FULL_VOLUME",
        "",
        "DUCKED_VOLUME",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final legacyFocusStream(Lcom/shilapi/xcertplay/media/AudioChannel;IZ)Ljava/lang/Integer;
    .locals 2

    invoke-static {}, Lcom/shilapi/xcertplay/E01AudioRoute;->supported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannel;->NAVIGATION:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-eq p1, v0, :cond_0

    if-lez p2, :cond_0

    const/16 v0, 0xa

    if-gt p2, v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioFocusCoordinator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/media/AudioChannel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 184
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p3, :cond_4

    const/4 v0, 0x0

    .line 183
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    if-gt v1, p2, :cond_6

    const/16 p1, 0x9

    if-ge p2, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x3

    .line 182
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
