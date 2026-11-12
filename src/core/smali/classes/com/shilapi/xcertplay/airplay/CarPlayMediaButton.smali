.class public final Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;
.super Ljava/lang/Object;
.source "CarPlayMediaButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0005J\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0017\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0002\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;",
        "",
        "<init>",
        "()V",
        "PLAY",
        "",
        "PAUSE",
        "PLAY_PAUSE",
        "NEXT",
        "PREVIOUS",
        "KEYCODE_BYD_AUTO_MEDIA_PLAY_PAUSE",
        "KEYCODE_BYD_AUTO_MEDIA_VOICE",
        "KEYCODE_BYD_AUTO_MEDIA_VOICE_LONG",
        "actionFor",
        "Lcom/shilapi/xcertplay/airplay/WheelAction;",
        "keyCode",
        "builtInAction",
        "opensSiri",
        "",
        "forKeyCode",
        "(I)Ljava/lang/Integer;",
        "builtInSiri",
        "builtIn",
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
.field public static final INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;

.field public static final KEYCODE_BYD_AUTO_MEDIA_PLAY_PAUSE:I = 0x161

.field public static final KEYCODE_BYD_AUTO_MEDIA_VOICE:I = 0x130

.field public static final KEYCODE_BYD_AUTO_MEDIA_VOICE_LONG:I = 0x138

.field public static final NEXT:I = 0x4

.field public static final PAUSE:I = 0x2

.field public static final PLAY:I = 0x1

.field public static final PLAY_PAUSE:I = 0x3

.field public static final PREVIOUS:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;

    invoke-direct {v0}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;-><init>()V

    sput-object v0, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final builtIn(I)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x161

    if-eq p1, v0, :cond_2

    const/16 v0, 0x57

    if-eq p1, v0, :cond_1

    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x5

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x4

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x3

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private final builtInSiri(I)Z
    .locals 1

    const/16 v0, 0xe7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x130

    if-eq p1, v0, :cond_1

    const/16 v0, 0x138

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final actionFor(I)Lcom/shilapi/xcertplay/airplay/WheelAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->builtInAction(I)Lcom/shilapi/xcertplay/airplay/WheelAction;

    move-result-object p1

    return-object p1
.end method

.method public final builtInAction(I)Lcom/shilapi/xcertplay/airplay/WheelAction;
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->builtInSiri(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/shilapi/xcertplay/airplay/WheelAction;->SIRI:Lcom/shilapi/xcertplay/airplay/WheelAction;

    return-object p1

    .line 41
    :cond_0
    invoke-direct {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->builtIn(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    sget-object p1, Lcom/shilapi/xcertplay/airplay/WheelAction;->NEXT:Lcom/shilapi/xcertplay/airplay/WheelAction;

    return-object p1

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    sget-object p1, Lcom/shilapi/xcertplay/airplay/WheelAction;->PREVIOUS:Lcom/shilapi/xcertplay/airplay/WheelAction;

    return-object p1

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    goto :goto_2

    .line 44
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/shilapi/xcertplay/airplay/WheelAction;->PLAY_PAUSE:Lcom/shilapi/xcertplay/airplay/WheelAction;

    return-object p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final forKeyCode(I)Ljava/lang/Integer;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->actionFor(I)Lcom/shilapi/xcertplay/airplay/WheelAction;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shilapi/xcertplay/airplay/WheelAction;->getMediaPress()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final opensSiri(I)Z
    .locals 1

    .line 53
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->actionFor(I)Lcom/shilapi/xcertplay/airplay/WheelAction;

    move-result-object p1

    sget-object v0, Lcom/shilapi/xcertplay/airplay/WheelAction;->SIRI:Lcom/shilapi/xcertplay/airplay/WheelAction;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
