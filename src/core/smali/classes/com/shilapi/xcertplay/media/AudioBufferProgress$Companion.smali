.class public final Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;
.super Ljava/lang/Object;
.source "AudioBufferProgress.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/media/AudioBufferProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;",
        "",
        "<init>",
        "()V",
        "rebuffersAfterUnderrun",
        "",
        "channel",
        "Lcom/shilapi/xcertplay/media/AudioChannel;",
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/shilapi/xcertplay/media/AudioBufferProgress$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final rebuffersAfterUnderrun(Lcom/shilapi/xcertplay/media/AudioChannel;)Z
    .locals 1

    .line 33
    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannel;->MEDIA:Lcom/shilapi/xcertplay/media/AudioChannel;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/media/AudioChannel;->PHONE:Lcom/shilapi/xcertplay/media/AudioChannel;

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
