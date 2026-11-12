.class public final Lcom/shilapi/xcertplay/airplay/MediaSink$DefaultImpls;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/airplay/MediaSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onAudioRtp(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onAudioRtp(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onAudioRtp$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V

    return-void
.end method

.method public static onAudioStarted(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onAudioStarted(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onAudioStarted$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V

    return-void
.end method

.method public static onAudioStopped(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onAudioStopped(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onAudioStopped$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V

    return-void
.end method

.method public static onIapMessage(Lcom/shilapi/xcertplay/airplay/MediaSink;[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onIapMessage(Lcom/shilapi/xcertplay/airplay/MediaSink;[B)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onIapMessage$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;[B)V

    return-void
.end method

.method public static onMicrophoneStarted(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onMicrophoneStarted(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onMicrophoneStarted$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V

    return-void
.end method

.method public static onMicrophoneStopped(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onMicrophoneStopped(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onMicrophoneStopped$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V

    return-void
.end method

.method public static onScreenStreamActive(Lcom/shilapi/xcertplay/airplay/MediaSink;IZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onScreenStreamActive(Lcom/shilapi/xcertplay/airplay/MediaSink;IZ)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onScreenStreamActive$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;IZ)V

    return-void
.end method

.method public static onVideoCodec(Lcom/shilapi/xcertplay/airplay/MediaSink;ILcom/shilapi/xcertplay/airplay/VideoCodec;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "codec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onVideoCodec(Lcom/shilapi/xcertplay/airplay/MediaSink;ILcom/shilapi/xcertplay/airplay/VideoCodec;)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onVideoCodec$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;ILcom/shilapi/xcertplay/airplay/VideoCodec;)V

    return-void
.end method

.method public static onVideoConfig(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "codecData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onVideoConfig(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onVideoConfig$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V

    return-void
.end method

.method public static onVideoFrame(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "naluBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onVideoFrame(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onVideoFrame$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V

    return-void
.end method

.method public static onVideoSize(Lcom/shilapi/xcertplay/airplay/MediaSink;III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onVideoSize(Lcom/shilapi/xcertplay/airplay/MediaSink;III)V
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$onVideoSize$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;III)V

    return-void
.end method

.method public static setVideoDiagnosticHandler(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/MediaSink;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$setVideoDiagnosticHandler(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function1;)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$setVideoDiagnosticHandler$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static setVideoRecoveryHandler(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shilapi/xcertplay/airplay/MediaSink;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    # invokes: Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$setVideoRecoveryHandler(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function0;)V
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->access$setVideoRecoveryHandler$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method
