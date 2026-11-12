.class public final synthetic Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;
.super Ljava/lang/Object;
.source "CarPlayMediaEngine.kt"


# direct methods
.method public static $default$onAudioRtp(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string p4, "id"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "format"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rtp"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onAudioStarted(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string p3, "id"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "format"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onAudioStopped(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onIapMessage(Lcom/shilapi/xcertplay/airplay/MediaSink;[B)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onMicrophoneStarted(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onMicrophoneStopped(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    .locals 1
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onScreenStreamActive(Lcom/shilapi/xcertplay/airplay/MediaSink;IZ)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    return-void
.end method

.method public static $default$onVideoCodec(Lcom/shilapi/xcertplay/airplay/MediaSink;ILcom/shilapi/xcertplay/airplay/VideoCodec;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string p1, "codec"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onVideoConfig(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string p1, "codecData"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onVideoFrame(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string p1, "naluBytes"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onVideoSize(Lcom/shilapi/xcertplay/airplay/MediaSink;III)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    return-void
.end method

.method public static $default$setVideoDiagnosticHandler(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$setVideoRecoveryHandler(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p0, "_this"    # Lcom/shilapi/xcertplay/airplay/MediaSink;

    .line 0
    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$onAudioRtp$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3, p4}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onAudioRtp(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;[BI)V

    return-void
.end method

.method public static synthetic access$onAudioStarted$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onAudioStarted(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/AudioFormat;I)V

    return-void
.end method

.method public static synthetic access$onAudioStopped$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onAudioStopped(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V

    return-void
.end method

.method public static synthetic access$onIapMessage$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;[B)V
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onIapMessage(Lcom/shilapi/xcertplay/airplay/MediaSink;[B)V

    return-void
.end method

.method public static synthetic access$onMicrophoneStarted$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onMicrophoneStarted(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;Lcom/shilapi/xcertplay/airplay/MicrophoneConfig;)V

    return-void
.end method

.method public static synthetic access$onMicrophoneStopped$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onMicrophoneStopped(Lcom/shilapi/xcertplay/airplay/MediaSink;Lcom/shilapi/xcertplay/airplay/AudioStreamId;)V

    return-void
.end method

.method public static synthetic access$onScreenStreamActive$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;IZ)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onScreenStreamActive(Lcom/shilapi/xcertplay/airplay/MediaSink;IZ)V

    return-void
.end method

.method public static synthetic access$onVideoCodec$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;ILcom/shilapi/xcertplay/airplay/VideoCodec;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onVideoCodec(Lcom/shilapi/xcertplay/airplay/MediaSink;ILcom/shilapi/xcertplay/airplay/VideoCodec;)V

    return-void
.end method

.method public static synthetic access$onVideoConfig$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onVideoConfig(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V

    return-void
.end method

.method public static synthetic access$onVideoFrame$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onVideoFrame(Lcom/shilapi/xcertplay/airplay/MediaSink;I[B)V

    return-void
.end method

.method public static synthetic access$onVideoSize$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;III)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$onVideoSize(Lcom/shilapi/xcertplay/airplay/MediaSink;III)V

    return-void
.end method

.method public static synthetic access$setVideoDiagnosticHandler$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$setVideoDiagnosticHandler(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic access$setVideoRecoveryHandler$jd(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/shilapi/xcertplay/airplay/MediaSink$-CC;->$default$setVideoRecoveryHandler(Lcom/shilapi/xcertplay/airplay/MediaSink;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method
