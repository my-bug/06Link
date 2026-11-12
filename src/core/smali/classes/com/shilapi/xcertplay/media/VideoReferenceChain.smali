.class public final Lcom/shilapi/xcertplay/media/VideoReferenceChain;
.super Ljava/lang/Object;
.source "VideoDecodeQueue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\nR\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/media/VideoReferenceChain;",
        "",
        "<init>",
        "()V",
        "value",
        "",
        "needsKeyFrame",
        "getNeedsKeyFrame",
        "()Z",
        "reset",
        "",
        "accepts",
        "bytes",
        "",
        "codec",
        "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
        "onQueued",
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
.field private needsKeyFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->needsKeyFrame:Z

    return-void
.end method


# virtual methods
.method public final accepts([BLcom/shilapi/xcertplay/airplay/VideoCodec;)Z
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->needsKeyFrame:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->INSTANCE:Lcom/shilapi/xcertplay/media/MediaCodecSupport;

    invoke-virtual {v0, p1, p2}, Lcom/shilapi/xcertplay/media/MediaCodecSupport;->isRandomAccess([BLcom/shilapi/xcertplay/airplay/VideoCodec;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getNeedsKeyFrame()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->needsKeyFrame:Z

    return v0
.end method

.method public final onQueued()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->needsKeyFrame:Z

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/shilapi/xcertplay/media/VideoReferenceChain;->needsKeyFrame:Z

    return-void
.end method
