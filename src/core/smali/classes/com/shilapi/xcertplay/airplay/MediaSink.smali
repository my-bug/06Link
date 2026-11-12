.class public interface abstract Lcom/shilapi/xcertplay/airplay/MediaSink;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shilapi/xcertplay/airplay/MediaSink$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u001e\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0012H\u0016J$\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00030\u0014H\u0016J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J \u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0005H\u0016J(\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u0005H\u0016J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\rH\u0016\u00a8\u0006)\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/airplay/MediaSink;",
        "",
        "onVideoCodec",
        "",
        "type",
        "",
        "codec",
        "Lcom/shilapi/xcertplay/airplay/VideoCodec;",
        "onVideoSize",
        "width",
        "height",
        "onVideoConfig",
        "codecData",
        "",
        "onVideoFrame",
        "naluBytes",
        "setVideoRecoveryHandler",
        "handler",
        "Lkotlin/Function0;",
        "setVideoDiagnosticHandler",
        "Lkotlin/Function1;",
        "",
        "onScreenStreamActive",
        "active",
        "",
        "onAudioStarted",
        "id",
        "Lcom/shilapi/xcertplay/airplay/AudioStreamId;",
        "format",
        "Lcom/shilapi/xcertplay/airplay/AudioFormat;",
        "firstSample",
        "onAudioRtp",
        "rtp",
        "sample",
        "onAudioStopped",
        "onMicrophoneStarted",
        "config",
        "Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;",
        "onMicrophoneStopped",
        "onIapMessage",
        "bytes",
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


# virtual methods
.method public abstract onAudioRtp(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V
.end method

.method public abstract onAudioStarted(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V
.end method

.method public abstract onAudioStopped(Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
.end method

.method public abstract onIapMessage([B)V
.end method

.method public abstract onMicrophoneStarted(Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V
.end method

.method public abstract onMicrophoneStopped(Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
.end method

.method public abstract onScreenStreamActive(IZ)V
.end method

.method public abstract onVideoCodec(ILcom/shilapi/xcertplay/airplay/VideoCodec;)V
.end method

.method public abstract onVideoConfig(I[B)V
.end method

.method public abstract onVideoFrame(I[B)V
.end method

.method public abstract onVideoSize(III)V
.end method

.method public abstract setVideoDiagnosticHandler(ILkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVideoRecoveryHandler(ILkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
