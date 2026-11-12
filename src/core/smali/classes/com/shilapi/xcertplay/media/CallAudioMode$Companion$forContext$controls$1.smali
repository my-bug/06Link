.class public final Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;
.super Ljava/lang/Object;
.source "CallAudioMode.kt"

# interfaces
.implements Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;->forContext(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/shilapi/xcertplay/media/CallAudioMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u000f\u001a\u00020\tH\u0016R$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00038V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "com/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1",
        "Lcom/shilapi/xcertplay/media/CallAudioMode$Controls;",
        "value",
        "",
        "mode",
        "getMode",
        "()I",
        "setMode",
        "(I)V",
        "",
        "speakerphoneOn",
        "getSpeakerphoneOn",
        "()Z",
        "setSpeakerphoneOn",
        "(Z)V",
        "hasEarpiece",
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


# instance fields
.field final synthetic $app:Landroid/content/Context;

.field final synthetic $audio:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;->$audio:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;->$app:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;->$audio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0
.end method

.method public getSpeakerphoneOn()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;->$audio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public hasEarpiece()Z
    .locals 3

    .line 126
    sget-object v0, Lcom/shilapi/xcertplay/media/CallAudioMode;->Companion:Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;

    iget-object v1, p0, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;->$app:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;->$audio:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v2}, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion;->hasEarpiece(Landroid/content/Context;Landroid/media/AudioManager;)Z

    move-result v0

    return v0
.end method

.method public setMode(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;->$audio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/shilapi/xcertplay/media/CallAudioMode$Companion$forContext$controls$1;->$audio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method
