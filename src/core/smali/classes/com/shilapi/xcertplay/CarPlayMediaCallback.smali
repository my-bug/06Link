.class public final Lcom/shilapi/xcertplay/CarPlayMediaCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "CarPlayMediaKeys.kt"


# instance fields
.field private final openFreeAuto:Lkotlin/jvm/functions/Function0;

.field private final send:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;->send:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;->openFreeAuto:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "mediaButtonIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 354
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->actionFor(I)Lcom/shilapi/xcertplay/airplay/WheelAction;

    move-result-object v2

    sget-object v4, Lcom/shilapi/xcertplay/airplay/WheelAction;->OPEN_FREE_AUTO:Lcom/shilapi/xcertplay/airplay/WheelAction;

    if-ne v2, v4, :cond_3

    if-eqz v1, :cond_2

    .line 357
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;->openFreeAuto:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return v3

    .line 360
    :cond_3
    sget-object v2, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->INSTANCE:Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/shilapi/xcertplay/airplay/CarPlayMediaButton;->forKeyCode(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    if-eqz v1, :cond_4

    .line 362
    iget-object p1, p0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;->send:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyCodeToString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v3

    .line 360
    :cond_5
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;->send:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pause"

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPlay()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;->send:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play"

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSkipToNext()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;->send:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "next"

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/shilapi/xcertplay/CarPlayMediaCallback;->send:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "previous"

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
