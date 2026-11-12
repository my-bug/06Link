.class public final Lcom/shilapi/xcertplay/media/CallAudioMode;
.super Ljava/lang/Object;
.source "CallAudioMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;,
        Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;,
        Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0003\u0019\u001a\u001bB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0008J\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\tJ\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0008H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/CallAudioMode;",
        "",
        "controls",
        "Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;",
        "saved",
        "Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;",
        "report",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;Lkotlin/jvm/functions/Function1;)V",
        "users",
        "",
        "previous",
        "Lkotlin/Pair;",
        "",
        "",
        "acquire",
        "key",
        "release",
        "releaseAll",
        "recoverStale",
        "restore",
        "reason",
        "Controls",
        "SavedState",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;

.field private static final PREFS:Ljava/lang/String; = "free_auto_call_audio"

.field private static final TAG:Ljava/lang/String; = "xcertplay-usb"


# instance fields
.field private final controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

.field private previous:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
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

.field private final saved:Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;

.field private final users:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/CallAudioMode;->Companion:Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;",
            "Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "controls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saved"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    .line 29
    iput-object p2, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->saved:Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;

    .line 30
    iput-object p3, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->report:Lkotlin/jvm/functions/Function1;

    .line 45
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->users:Ljava/util/Set;

    return-void
.end method

.method private final restore(Ljava/lang/String;)V
    .locals 6

    const-string v0, "Audio: call hands-free off ("

    const-string v1, "Audio: call hands-free left as is ("

    .line 92
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->previous:Lkotlin/Pair;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->saved:Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;

    invoke-interface {v2}, Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;->load()Lkotlin/Pair;

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    .line 93
    iput-object v3, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->previous:Lkotlin/Pair;

    .line 94
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->saved:Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;->clear()V

    if-nez v2, :cond_1

    return-void

    .line 97
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_2

    .line 100
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->report:Lkotlin/jvm/functions/Function1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): mode="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " belongs to another call"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {v1}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->getSpeakerphoneOn()Z

    move-result v1

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->setSpeakerphoneOn(Z)V

    :cond_3
    if-ne v3, v4, :cond_4

    .line 104
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->setMode(I)V

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->report:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {v2}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->getMode()I

    move-result v2

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->getSpeakerphoneOn()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") mode="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " speaker="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->report:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Audio: call hands-free could not be undone ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized acquire(Ljava/lang/String;)V
    .locals 8

    const-string v0, "Audio: call hands-free on previousMode="

    const-string v1, "Audio: call hands-free could not be set: "

    monitor-enter p0

    :try_start_0
    const-string v2, "key"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->users:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->users:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    goto/16 :goto_1

    .line 53
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {p1}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->getMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->getSpeakerphoneOn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 54
    iget-object v3, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {v3}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->hasEarpiece()Z

    move-result v3

    .line 55
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->saved:Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;->save(IZ)V

    .line 56
    iput-object p1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->previous:Lkotlin/Pair;

    .line 57
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->setMode(I)V

    if-eqz v3, :cond_1

    .line 58
    iget-object v4, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {v4, v2}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->setSpeakerphoneOn(Z)V

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->report:Lkotlin/jvm/functions/Function1;

    .line 60
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    .line 61
    iget-object v5, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {v5}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->getMode()I

    move-result v5

    iget-object v6, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->controls:Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;

    invoke-interface {v6}, Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;->getSpeakerphoneOn()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " previousSpeaker="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " earpiece="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mode="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " speaker="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    :try_start_2
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->report:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized recoverStale()V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->users:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->saved:Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;

    invoke-interface {v0}, Lcom/shilapi/xcertplay/media/CallAudioMode$SavedState;->load()Lkotlin/Pair;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_2
    iput-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->previous:Lkotlin/Pair;

    .line 88
    const-string v0, "previous run ended during a call"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/CallAudioMode;->restore(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized release(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->users:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->users:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "call ended"

    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/media/CallAudioMode;->restore(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
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

.method public final declared-synchronized releaseAll()V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->users:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode;->users:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    if-nez v0, :cond_0

    .line 79
    const-string v0, "session closed"

    invoke-direct {p0, v0}, Lcom/shilapi/xcertplay/media/CallAudioMode;->restore(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
