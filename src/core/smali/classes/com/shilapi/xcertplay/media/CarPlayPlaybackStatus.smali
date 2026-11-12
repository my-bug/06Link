.class public final Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;
.super Ljava/lang/Object;
.source "CarPlayPlaybackStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\r\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000eR\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;",
        "",
        "<init>",
        "()V",
        "value",
        "",
        "playing",
        "getPlaying",
        "()Z",
        "accept",
        "frame",
        "Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;",
        "(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Ljava/lang/Boolean;",
        "clear",
        "()Ljava/lang/Boolean;",
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
.field public static final Companion:Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus$Companion;

.field public static final NOW_PLAYING_UPDATE:I = 0x5001

.field private static final PLAYBACK:I = 0x1

.field private static final STATUS:I = 0x0

.field private static final STATUS_PLAYING:I = 0x1


# instance fields
.field private playing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;->Companion:Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;->getMessageId()I

    move-result v0

    const/16 v1, 0x5001

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 18
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;

    .line 19
    sget-object v3, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->Companion:Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;

    invoke-virtual {v3, p1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader$Companion;->of(Lcom/shilapi/xcertplay/iap2/wire/Iap2Frame;)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalGroup(I)Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/shilapi/xcertplay/iap2/body/Iap2BodyReader;->optionalU8(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 18
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p1, v2

    :cond_2
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    .line 22
    :cond_3
    iget-boolean p1, p0, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;->playing:Z

    if-ne v0, p1, :cond_4

    return-object v2

    .line 23
    :cond_4
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;->playing:Z

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v2
.end method

.method public final clear()Ljava/lang/Boolean;
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;->playing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;->playing:Z

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaying()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/CarPlayPlaybackStatus;->playing:Z

    return v0
.end method
