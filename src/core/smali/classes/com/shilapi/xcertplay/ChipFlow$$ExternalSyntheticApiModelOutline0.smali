.class public final synthetic Lcom/shilapi/xcertplay/ChipFlow$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/app/ApplicationExitInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;J)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo$VideoCapabilities;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaExtractor;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaExtractor;Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/ChipFlow;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ChipFlow;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/ConnectionStatusRow;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ConnectionStatusRow;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec$BufferInfo;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/media/MediaExtractor;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic m(Landroid/media/MediaFormat;Ljava/lang/String;)J
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;
    .locals 0

    .line 0
    check-cast p0, Landroid/app/ApplicationExitInfo;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/content/Context;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/hardware/display/DisplayManager$DisplayListener;
    .locals 0

    .line 0
    check-cast p0, Landroid/hardware/display/DisplayManager$DisplayListener;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaCodec;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/MediaExtractor;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/MediaExtractor;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaExtractor;I)Landroid/media/MediaFormat;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/session/MediaSession$Callback;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/session/MediaSession$Callback;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/session/MediaSession;
    .locals 0

    .line 0
    check-cast p0, Landroid/media/session/MediaSession;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/session/PlaybackState$Builder;IJF)Landroid/media/session/PlaybackState$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/res/Configuration;)Landroid/os/LocaleList;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/util/Range;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/util/Range;
    .locals 0

    .line 0
    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/view/Display;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Landroid/view/Display;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)Landroid/view/Window;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/Display;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/content/res/Configuration;Landroid/os/LocaleList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/hardware/display/DisplayManager;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;IIIJI)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaExtractor;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaExtractor;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaExtractor;JI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaExtractor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSession;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/session/MediaSession;->release()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSession;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSession;Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSession;Landroid/media/session/PlaybackState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/session/MediaSession;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/ProgressBar;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/CarPlayHostActivity;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/CarPlayHostActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/ClusterMapPresentation;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->dismiss()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/ClusterMapPresentation;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/ClusterMapPresentation;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->show()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/GenericClusterPresentation;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaExtractor;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaFormat;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/shilapi/xcertplay/GenericClusterPresentation;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->isShowing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodecList;)[Landroid/media/MediaCodecInfo;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/display/DisplayManager;Ljava/lang/String;)[Landroid/view/Display;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/app/ApplicationExitInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaCodecInfo$VideoCapabilities;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaExtractor;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/util/Range;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaCodec;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->stop()V

    return-void
.end method

.method public static bridge synthetic m$1(Lcom/shilapi/xcertplay/ClusterMapPresentation;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/ClusterMapPresentation;->show()V

    return-void
.end method

.method public static bridge synthetic m$1(Lcom/shilapi/xcertplay/GenericClusterPresentation;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/shilapi/xcertplay/GenericClusterPresentation;->dismiss()V

    return-void
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$2(Landroid/app/ApplicationExitInfo;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$2(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    return p0
.end method

.method public static bridge synthetic m$2(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Range;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRates()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$2(Landroid/media/MediaCodec;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method

.method public static bridge synthetic m$3(Landroid/media/MediaCodec;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method
